# VHDL Wait Statement Error

This repository demonstrates a common error in VHDL: incorrect usage of the `wait` statement inside a process.  The example shows how using `wait until` to check for a condition can lead to unexpected behavior, and how to use `wait for` correctly.

## Bug Description
The bug lies in the incorrect use of `wait until` within a process.  While `wait until` is acceptable in some instances, it shouldn't be used to check for a changing condition that updates within the process, such as a counter. In this case, `wait for` should be used to ensure the process pauses until the specific condition is met. This prevents race conditions and other issues.

## Solution
The solution involves replacing `wait until` with `wait for`.