---
title: "Assignment 3"
---

Solve the following problems

1. Chapter 4, problem 2

1. Chapter 4, problem 6

1. Determine the output of the following two Pep/9 machine language
   programs. The left column in each part is the memory address of the first
   byte on the line. ASSUME REGISTERS A AND X HAVE BEEN INITIALIZED TO 0000
   prior to program execution. In addition to showing the output, you need to
   show the effect of every step in the von Neumann execution cycle on CPU
   registers (for all instructions from program loading to halting). I suggest
   you draw a table (as we did in class) with columns labeled with CPU registers
   and rows showing their contents as the program executes. Also label your rows
   with the events occurring. See example below.

   ```
   PROGRAM 1:          PROGRAM 2:
    0000  C1000A        0000 C10009
    0003  81000C        0003 06
    0006  F1FC16        0004 0C
    0009  00            0005 F1FC16
    000A  A94F          0008 00
    000C  FFFD          0009 C364
   ```

   {: .ic-Table .ic-Table--hover-row .ic-Table--striped .ic-Table--condensed }
   | Step                                       |    PC   |    IR   |    SP   |   NZVC  |    X    |    A    |
   | ------------------------------------------ | :-----: | :-----: | :-----: | :-----: | :-----: | :-----: |
   |                                            |    ?    |    ?    |    ?    |    ?    |   0000  |   0000  |
   | Load                                       |         |         |         |         |         |         |
   | Increment PC                               |         |         |         |         |         |         |
   | Decode                                     | &mdash; | &mdash; | &mdash; | &mdash; | &mdash; | &mdash; |
   | If non-unary, fetch (skip otherwise)       |         |         |         |         |         |         |
   | If non-unary, increment PC (skip otherwise)|         |         |         |         |         |         |
   | Execute                                    |         |         |         |         |         |         |
   | ...                                        |         |         |         |         |         |         |

1. Use the Pep/9 software to write and test a machine-language program to input
   two single-digit numbers each between 1 and 5, compute their average, and
   output their single-digit integer average (as a character). Note that there
   can be no space between the two single-digit numbers on input.
