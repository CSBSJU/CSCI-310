---
title: "Final exam study guide"
permalink: /study-guides/final/
toc: true
---

{% capture notice-text %}
During the exam, I will provide you with the following (IF NEEDED):
* Pep/9 assembly/machine instructions table
* Pep/9 addressing modes table
* Pep/9 pseudo-ops (e.g., `.ASCII`, `.BLOCK`, etc.)
* Pep/9 memory architecture
* Bollean algebra laws
* ASCII table
* Pep/9 ALU control instructions table
* Diagram of Pep/9 data section
* Excitation and characterization tables for basic flip-flops
{% endcapture %}

<div class="notice--info">
  {{ notice-text | markdownify }}
</div>

### Chapter 1
* The 7-layer architecture of a typical computer system along with a clear
  understanding of how abstraction plays a role in this architecture

### Chapter 2
* Be able to perform memory allocation and deallocation processes including
  * Static memory allocation
  * Stack allocation (procedure and function calls)
  * Dynamic memory allocation (pointers and data structures)

### Chapter 3
* Integers
  * Range (min, max) for an N-bit signed/unsigned number
  * Convert among all the numbering systems discussed (decimal, binary,
    hexadecimal, etc.)
  * 2's complement notation for signed numbers
  * Perform arithmetic/logical operations: **ADD**, **SUBTRACT**, **NEGATE**,
    **NOT**, **AND**, **OR**, **NOT**, **XOR**, <span class="fas
    fa-long-arrow-alt-right"></span> (i.e. implies), etc.
  * Status bits (**N**, **Z**, **V**, **C**)
* Characters
  * Characters and their ASCII numeric codes **(ASCII TABLE WILL BE PROVIDED)**
* Floating Point numbers
  * Design: sign, exponent, mantissa, excess value
  * Normalized, denormalized and special values
  * IEEE format for any N-bit floating-point number

### Chapter 4
* Pep/9 CPU and memory architecture
* Pep/9 Instruction format
* von Neumann Architecture
  * Memory holds both program and data
  * Sequence of steps in the von Neumann cycle
* Machine Level Programming
  * Write a program at the level of the examples in class and in Chapter 4
  * Understand programming details

### Chapters 5-6
* Improvements of assembly language over machine language
* 1-to-1 mapping between assembly and machine language programs
* Addressing modes: immediate, direct, stack-relative and stack-relative
  deferred, indexed, and stack-indexed and stack-indexed deferred
* Branching
* von Neumann logic: Why increment PC before execute?
* Translating C constructs to assembly:
  * I/O commands
  * local/global variables
  * constants
  * `if/else` statements with `OR` and/or `AND` conditions
  * `while` loops
  * `do` loops
  * `for` loops
  * procedure/function calls
  * passing parameters by value and by reference
  * recursion
  * arrays (local, global, and parameters)
  * `switch` statements
  * pointers (local, global, and parameters)
  * dynamic memory allocation via new operator
  * `structs` (local, global, and via local as well as global pointers)
  * linked data structures

### Chapters 8-9
* Pep/9 OS (understand Pep/9 OS code)
  * RAM
  * ROM
  * Trap mechanism: asserting addressing modes, setting address of trap
    operand, saving PCB on system stack, RETTR, and understanding all traps
    (except DECI)
  * Memory vectors
* Synchronous vs. asynchronous OS calls
* Multitasking and process life cycle
* Multiprogramming memory allocation techniques (advantages and disadvantages
  for each)
  * Fixed-partitioning (logical-to-physical address translation)
  * Variable-partitioning (fragmentation, compaction)
  * Paging (pages, page tables, frames, and logical-to-physical address
    translation)
  * Virtual Memory (page tables, frame tables, page replacement)
* The internals of a hard disk:
  * Access time

### Chapters 10-11
* Combinational circuits
  * Logic gates
  * Ways for describing combinational circuits (and converting between any two
    of them)
    * Truth tables
    * Boolean expressions
    * Logic diagrams
  * Simplifying expressions using Boolean algebra laws
  * Sum of products method
  * NAND’s functional completeness (how to create any gate and/or any circuit
    using NANDs alone)
  * Designing circuits for given certain functionalities (e.g., `ADD`, `SUB`,
    `AND`, etc.) given a truth table
  * Commonly used circuits
    * Enable lines
    * Selective inverters
    * Decoders
    * Multiplexers

### Sample questions
* Multiple choice
* True/False
* Short answer questions
* Memory allocation
  * Show memory (static memory, stack and heap) for a given C program (also find
    output)
* Data representation
  * Converting among decimal, binary, and hexadecimal (signed and unsigned)
  * Logical/arithmetic operations on signed integers and effects on NZVC
  * Apply the IEEE floating-point format on an N-bit number: normalized,
    denormalized, and special values)
* Assembly language
  * (Literally) translate a given C program to Pep/9 assembly
  * Complete/change a given Pep/9 assembly program to serve as a (literal)
    translation of a given C program
  * Change a given Pep/9 assembly language to achieve something different (e.g.,
    use a while loop instead of a do loop or use local variables instead of
    global variables)
  * Display the output of a given assembly program for some sample input
  * Display the values of labels/symbols in the symbol table of an assembly
    program
  * Display the value of a given label/symbol in an assembly program using
    specific addressing modes
  * Write a Pep/9 assembly language program to achieve a specific purpose
* OS
  * Pep/9 OS (except for DECI)
  * Logical-to-physical address translation
  * Variable partitioning
  * Page replacement in virtual memory
* Combinational circuits
  * Convert between the different ways for describing combinational circuits:
    truth tables, Boolean expressions and logic diagrams
  * Designing circuits for given certain functionalities (e.g., `ADD`, `SUB`,
    `AND`, etc.) given a truth table or by completing the truth table first
  * Replacing gates with other gates (e.g. NAND)
