---
title: "Assignment 7"
---

## This assignment may be completed in groups of two!

Pep/9 programs that do not adhere to the following WILL NOT be accepted or
graded:
* You are expected to do literal line-by-line translation.
* Your assembly programs must include comments showing the corresponding C code
  that produces the each line of assembly code in your program.
* In addition, I expect to see complete trace tags in your program (for global
  and stack tracers) such that I can see a complete picture of memory (static
  memory and stack) when using Pep/9's tracer.
* Finally, your program must be indented nicely to make it readable.

Solve the following problems:

1. Write a Pep/9 assembly program that takes an integer number as input. Your
   program --- name it `BFPO.pep` --- will interpret the input number as a
   16-bit *Binary Floating Point Number* stored using the following IEEE format:
   *1 sign bit, 6 exponent bits and 9 significant bits using excess 31 notation
   for normalized numbers and excess 30 for denormalized numbers.* Based on the
   input number, your program will then output one of the following describing
   the input number (consult Fig. 3.32 and all of Sec. 3.5 to refresh your
   memory on IEEE floating point numbers):
   * `NaN` if the number is not a number
   * `–Inf` if the number is negative infinity number
   * `Inf` if the number is positive infinity number
   * `–Norm` if the number is a negative normalized number
   * `Norm` if the number is a positive normalized number
   * `–ZERO` if the number is a negative zero number
   * `ZERO` if the number is a positive zero number
   * `–DeNorm` if the number is a negative denormalized number
   * `DeNorm` if the number is a positive denormalized number

1. Modify the [`pep9os.pep`]({% file handouts/pep9os.pep %}) by adding a new
   non-unary trap called `BFPO` (Binary Floating Point Output) which behaves
   exactly like your program in Question 1. Allow the same addressing modes as
   with `DECO`. NOTE the following steps to complete this part:
   * Select the menu option: **System -> Redefine Mnemonics** to replace the
     mnemonics for the `NOP` nonunary instruction with your new `BFPO` trap
     instruction. The dialog box requires you to enter a mnemonic (i.e. a new
     instruction name for which you'll use BFPO) along with allowed addressing
     modes for `BFPO`
   * Modify the trap handler part of the operating system to implement your new
     instruction. PS: You only need to modify the code of the nonunary
     instruction being replaced
   * When done, select the menu option: **System -> Assemble/Install New OS** to
     make your changes effective
   * Write a simple assembly language program to test your new instruction with
     the new mnemonic. The assembler should recognize the new mnemonic and
     generate the appropriate object code
   * Use the provided [`testBFPO.pep`]({% file handouts/testBFPO.pep %}) to test
     that your new trap from (b) produces correct output for all possible cases
     listed in part (a) and that it works properly with ALL legal addressing
     modes.
   * *Caution: You cannot use any trap instructions in your trap handler*
