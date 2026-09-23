# bbotk

Rules for `bbotk` (Black-Box Optimization Toolkit) and packages that build on it: `mlr3tuning`, `mlr3fselect`, `mlr3mbo`, `mlr3hyperband`, `miesmuschel`, and `mlr3automl`. bbotk is the optimization base package of the mlr3 ecosystem, so the `mlr3.md` rules (R6, dictionaries, `mlr_reflections`, `data.table`, no `::` for wholesale imports) also apply. The points below are bbotk-specific.

## Core abstractions

- `OptimInstance` couples an `Objective`, a search space (`paradox::ParamSet`), and a `Terminator`. It owns the `Archive` and is the object handed to an `Optimizer`.
- `Optimizer` proposes points; the instance evaluates them. Optimizers never call the objective directly.
- `Objective` wraps the function under optimization. Subclasses: `ObjectiveRFun` (single config), `ObjectiveRFunDt` (`data.table` in/out), `ObjectiveRFunMany`.
- `Codomain` is the `ParamSet` describing the objective's output, with `minimize`/`maximize` tags per target. Multi-target codomain ⇒ multi-crit.
- `Terminator` decides when optimization stops via `$is_terminated(archive)`.
- `Archive` stores all evaluated points and results; `ArchiveBatch` vs `ArchiveAsync` (+ `ArchiveAsyncFrozen`).

## Batch vs. async

The class tree is split into two parallel worlds — keep them separate and mirror changes across both when relevant:

- **Batch**: `OptimInstanceBatch{SingleCrit,MultiCrit}`, `OptimizerBatch*`, `ArchiveBatch`, `CallbackBatch`, `ContextBatch`. Points are proposed and evaluated in synchronous batches.
- **Async**: `OptimInstanceAsync{SingleCrit,MultiCrit}`, `OptimizerAsync*`, `ArchiveAsync`, `CallbackAsync`, `ContextAsync`. Distributed evaluation via `rush` (see `rush.md`) — workers run `$.optimize()` while `$optimize()` orchestrates from the main process.

The un-suffixed `OptimInstanceSingleCrit` / `OptimInstanceMultiCrit` / `OptimInstanceMultiCrit` files are deprecated compatibility shims; new instances are Batch or Async.

## File naming & class hierarchy

- One R6 class per file, named exactly as the class (`OptimizerBatchCmaes.R`, `TerminatorEvals.R`).
- Optimizer classes are prefixed `OptimizerBatch*` / `OptimizerAsync*`; terminators `Terminator*`.
- Dictionary files: `mlr_optimizers.R`, `mlr_terminators.R`, `mlr_test_functions.R`, `mlr_callbacks.R`.

## Dictionaries & sugar

Objects are registered in dictionaries and accessed via sugar functions:

| Dictionary        | Sugar              | Example                                   |
|-------------------|--------------------|-------------------------------------------|
| `mlr_optimizers`  | `opt()` / `opts()` | `opt("random_search", batch_size = 10)`   |
| `mlr_terminators` | `trm()` / `trms()` | `trm("evals", n_evals = 100)`             |
| `mlr_test_functions` | `otfun()` / `otfuns()` | `otfun("branin")`                    |

`oi()` / `oi_async()` construct optimization instances. Register every new object at the bottom of its file, e.g.:

```r
mlr_optimizers$add("random_search", OptimizerBatchRandomSearch)
mlr_terminators$add("evals", TerminatorEvals)
```

## Authoring an optimizer or terminator

- An `Optimizer` subclass implements the private method `$.optimize(inst)` — the abstract hook (`Optimizer.R:160`). The public `$optimize()` is defined on the base class; do not override it. The loop body differs by kind:
  - **Batch** (`OptimizerBatch*`): `.optimize()` runs in the main process and `repeat`s calling `inst$eval_batch(design)`. Termination is signaled as an exception thrown from `eval_batch()` and caught by the base class — do **not** guard the loop with `is_terminated`.
  - **Async** (`OptimizerAsync*`): `.optimize()` runs on the `rush` workers (the main-process `$optimize()` just starts them). Loop with `while (!inst$is_terminated)` and evaluate single points via `get_private(inst)$.eval_point(xs)` — here you **do** check `is_terminated` explicitly.
- Declare `properties` in the constructor; they must be a subset of `bbotk_reflections$optimizer_properties` (`"dependencies"`, `"single-crit"`, `"multi-crit"`, `"async"`). Terminator/objective properties live in `bbotk_reflections` too.
- A `Terminator` implements `$is_terminated(archive)` returning `logical(1)`. `$param_set` is read-only after construction.
- Third-party packages may extend `bbotk_reflections` (e.g. to register new properties).

## Error handling

bbotk defines its own structured conditions in `R/conditions.R` (built on `mlr3misc::error_mlr3()`) — prefer these over the generic mlr3misc `error_*` helpers listed in `mlr3.md`:

- `error_bbotk()` → class `Mlr3ErrorBbotk` (general bbotk error).
- `error_bbotk_terminated()` → classes `Mlr3ErrorBbotkTerminated`, `Mlr3ErrorBbotk`, `terminated_error`. Signals normal termination; raised via `helper.R`. The legacy `terminated_error` class is retained on purpose so downstream `tryCatch()` handlers (miesmuschel, mlr3tuning, mlr3book) keep working — do not remove it.

Both accept `sprintf`-style `...`, `signal = FALSE` to return the condition instead of raising, and a `parent` condition. Plain `stopf()` remains fine for local assertion failures.

## Testing

- Tests for `R/{Name}.R` go in `tests/testthat/test_{Name}.R`.
- Async/`rush` tests share a Redis instance — run them sequentially, never concurrently (see `rush.md`).
- Use `mlr_test_functions` (e.g. `otfun("branin")`, sphere) as cheap objectives in tests rather than bespoke functions.
