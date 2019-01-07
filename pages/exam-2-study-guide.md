---
title: "Exam 2 study guide"
---

{% capture notice-text %}
During the exam, I will provide you with the following (IF NEEDED):
* Pep/9 assembly instructions table
* Pep/9 addressing modes table
* Pep/9 pseudo-ops (e.g., `.ASCII`, `.BLOCK`, etc.)
* Pep/9 memory architecture
* ASCII table
{% endcapture %}

<div class="ic-flash-info">
  <div class="ic-flash__icon" aria-hidden="true"><i class="icon-info"></i></div>{{ notice-text | markdownify }}
</div>

### Chapter 4
* Pep/9 CPU and memory architecture
* Pep/9 Instruction format
* Pep/9 Instructions **(INSTRUCTION TABLE WILL BE PROVIDED)**
  * Operand vs. operand specifier
  * Unary vs. non-unary instruction
  * Byte vs. word operations
  * RTL specification for instructions
  * Effects on CPU, NZVC, and memory
* von Neumann Architecture
  * Memory holds both program and data
  * Sequence of steps in the von Neumann cycle
  * Be able to trace the effects of program execution on CPU registers and
    memory
* Machine Level Programming
  * Write a program at the level of the examples in class and in Chapter 4
  * Understand programming details
* Loader
  * What is a loader? What does it do?
  * Distinguish between RAM and ROM
  * Pep/9 memory architecture

### Chapters 5-6
* Pep/9 CPU registers and memory architecture
* Improvements of assembly language over machine language
* Assemblers and loaders
* 1-to-1 mapping between assembly and machine language programs
* Assembly labels/symbols and symbol lookup tables
* Addressing modes: immediate, direct
* Enforcing data type compatibility at the HOL6 level (symbol tables)
* Translating C constructs to assembly:
  * I/O commands
  * global variables
  * constants

### Sample exam questions
* Write or modify a machine language program
* Find output and/or trace the execution of a given machine language program
  (von Neumann tracing)
* (Literally) translate a given C program to Pep/9 assembly
* Complete/change a given Pep/9 assembly program to serve as a (literal)
  translation of a given C program
* Display the output of a given assembly program for some sample input
* Display the values of labels/symbols in the symbol table of an assembly
  program
* Display the value of a given label/symbol in an assembly program using
  specific addressing modes
* (Reverse engineer) Produce a C program from a given Pep/9 assembly program
* Write a Pep/9 assembly language program to achieve a specific purpose
