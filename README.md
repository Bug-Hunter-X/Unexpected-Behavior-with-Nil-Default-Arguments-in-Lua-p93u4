# Lua Nil Default Argument Issue

This repository demonstrates a subtle issue related to default arguments in Lua when dealing with explicitly passed `nil` values.  The `foo` function showcases how the default argument mechanism behaves differently when `nil` is explicitly provided versus when an argument is simply omitted.

## The Problem

Lua's default argument mechanism treats an explicitly passed `nil` differently than an omitted argument.  This behavior can be unexpected for developers accustomed to other languages.  The core problem stems from the way Lua evaluates default arguments in the presence of `nil`.  When a parameter is entirely omitted, Lua uses the default value; however, when `nil` is specifically passed, Lua does not apply the default value. 

## How to Reproduce

1.  Clone this repository.
2.  Run `bug.lua` using a Lua interpreter.
3. Observe the unexpected output for the `foo(nil, 10)` and similar calls.

## Solution

The solution demonstrates the best approach to handling potential `nil` values in function arguments.  The `bugSolution.lua` file provides a more robust and predictable way to handle optional parameters, eliminating the unexpected behavior described above.

## Additional Notes

This issue is important for Lua developers to be aware of when designing functions with optional parameters.  Understanding the nuances of `nil` handling is crucial for writing clean, predictable, and reliable Lua code.