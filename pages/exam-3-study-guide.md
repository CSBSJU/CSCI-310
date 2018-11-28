---
title: "Exam 3 study guide"
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

### Chapters 5-6
* Pep/9 CPU registers and memory architecture
* Improvements of assembly language over machine language
* Assemblers and loaders
* 1-to-1 mapping between assembly and machine language programs
* Assembly labels/symbols and symbol lookup tables
* Addressing modes: immediate, direct, stack-relative and stack-relative
  deferred, **indexed, and stack-indexed and stack-indexed deferred**
* Branching
* von Neumann logic: Why increment PC before execute?
* Enforcing data type compatibility at the HOL6 level (symbol tables)
* Structured vs. unstructured code: spaghetti code in assembly
* Stack allocation (procedure and function calls)
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
  * **arrays (local, global, and parameters)**
  * `switch` **statements**
  * **pointers (local, global, and parameters)**
  * **dynamic memory allocation via malloc function**
  * `structs` **(local, global, and via local as well as global pointers)**
  * **linked data structures**

### Chapters 8-9
* **Pep/9 OS (understand Pep/9 OS code)**
  * **RAM**
  * **ROM**
  * **Trap mechanism: asserting addressing modes, setting address of trap
    operand, saving PCB on system stack, RETTR
  * **Memory vectors**
* **Synchronous vs. asynchronous OS calls**
* **Multitasking and process life cycle**
* **Memory management**
  * **Partitioning schemes**
  * **Paging and virtual memory**

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
* **Multiple choice or T/F questions**
