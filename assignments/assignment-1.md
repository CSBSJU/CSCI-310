---
title: "Assignment 1"
---

Solve the following problems from the text book

1. Chapter 2, problem 3
  * **NOTE** When you draw the run-time stack just after the third call to the
    function `reverse()`, you need to include ALL VARIABLES IN ALL MEMORIES
    (i.e., static, heap, and stack memory) AND THEIR VALUES as in Figure 2.19.
    Make sure you clearly differentiate among the different types of memories
    being utilized by the program.
  * **NOTE** You may change the actual parameters (`int k`) passed to the
    function `reverse()` to be appropriate for size of the string being
    reversed.

1. Chapter 2, problem 7
  * See NOTE above.

1. Chapter 2, problem 12
  * You CANNOT change the function signature from
    ```c
    void rect(int *ar, int *per, int len, int wid)
    ```
  * In addition to writing the program, draw the run-time stack for inputs
    `length=6` and `width=8` at the following points in time during
    program execution (see NOTE above)
    * *After* user input, but *before* the call to `rect()`
    * *After* the function `rect()` has been called, but *before* it starts
      executing
    * *After* call to `rect()` finishes execution, but *before* it
      returns back to `main()`
    * *After* call to `rect()` returns back to `main()`

1. Chapter 2, problem 18
