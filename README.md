# Lua Nested Table Traversal Bug

This repository demonstrates a potential issue with nested table traversal in Lua using the `pairs` iterator. The problem arises from the fact that `pairs` does not guarantee a specific iteration order. This can lead to unexpected behavior if the table structure is modified during the iteration process.

The `bug.lua` file contains a function that recursively traverses a nested table.  The `bugSolution.lua` file provides a workaround using a manual depth-first traversal which ensures predictable order.

## How to Reproduce

1. Clone this repository.
2. Run `bug.lua`.  Observe the output; it might vary on different systems or Lua versions.
3. Run `bugSolution.lua`. Observe the consistent output.

## Note
The non-deterministic order in `pairs` is by design and usually not a problem, but it becomes crucial in scenarios like this where the modification of data during traversal is attempted.