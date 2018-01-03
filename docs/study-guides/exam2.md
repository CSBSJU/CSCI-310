---
title: "Exam 2 study guide"
permalink: /study-guides/exam2/
---

## Exam 2 study guide

### Chapters 5-6
* Pep/9 CPU registers and memory architecture
* Improvements of assembly language over machine language
* Assemblers and loaders
* 1-to-1 mapping between assembly and machine language programs
* Assembly labels/symbols and symbol lookup tables
* Addressing modes: immediate, direct, and stack-relative and stack-relative
  deferred
* Branching
* von Neumann logic: Why increment PC before execute?
* Enforcing data type compatibility at the HOL6 level (symbol tables)
* Structured vs. unstructured code: spaghetti code in assembly
* Stack allocation (procedure and function calls)
* Translating C constructs to assembly:
  * I/O commands
  * local/global variables
  * constants
  * ```if/else``` statements with ```OR``` and/or ```AND``` conditions
  * ```while``` loops
  * ```do``` loops
  * ```for``` loops
  * procedure/function calls
  * passing parameters by value and by reference
  * recursion

### During the exam, I will provide you with the following (IF NEEDED)
* Pep/9 assembly instructions table
* Pep/9 addressing modes table
* Pep/9 pseudo-ops (e.g., ```.ASCII```, ```.BLOCK```, etc.)
* Pep/9 memory architecture
* ASCII table

### Sample exam questions
* (Literally) translate a given C program to Pep/9 assembly
* Complete/change a given Pep/9 assembly program to serve as a (literal)
  translation of a given C program
* Change a given Pep/9 assembly language to achieve something different (e.g.,
  use a while loop instead of a do loop or use local variables instead of global
  variables)
* Display the output of a given assembly program for some sample input
* Display the values of labels/symbols in the symbol table of an assembly
  program
* Display the value of a given label/symbol in an assembly program using
  specific addressing modes
* (Reverse engineer) Produce a C program from a given Pep/9 assembly program
* Write a Pep/9 assembly language program to achieve a specific purpose
