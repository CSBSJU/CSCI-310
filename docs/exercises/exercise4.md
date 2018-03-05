---
title: "Exercise 4"
permalink: /exercises/4/
---

Solve the following problems

1. Chapter 5, problem 9

1. Chapter 5, problem 11

1. Chapter 5, problem 14.
  * **NOTE** Object code means machine language. Include a .pepo program
    containing the solution for this problem.

1. Chapter 5, problem 26
  * **NOTE** I expect you to do LINE-BY-LINE LITERAL TRANSLATION. Your assembly
    program must include comments showing the corresponding C code that produces
    each line of assembly code in your program as in Figure 5.22. Include a .pep
    program containing the solution for this problem.

1. Write an assembly language program that corresponds to the following C
   program.
  * **NOTE** I expect you to do LINE-BY-LINE LITERAL TRANSLATION. Your assembly
    program must include comments showing the corresponding C code that produces
    each line of assembly code in your program as in Figure 5.22. Include a .pep
    program containing the solution for this problem.

``` c
#include<stdio.h>

int const val = 1;
char ch;
int num;

int main() {
  scanf("%c %d", &ch, &num);
  num %= 16;
  num -= val;
  printf("Number is now: %d\n", num);
  ch--;
  printf("Character is now: %c\n", ch);
  return 0;
}
```
