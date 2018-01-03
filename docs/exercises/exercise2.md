---
title: "Exercise 2"
permalink: /exercises/2/
---

## Exercise 2

Solve the following problems

1. Chapter 3, problem 18

1. Chapter 3, problem 19, part e

1. Using the 8-bit floating-point design (excess 3) we used in class, find the
   floating-point representation for each of the following numbers:
   1. 4.6
   1. 4.55
   1. Do you find the results to be logical (i.e. do they reflect the actual
      decimal values)? Can you justify what is going on?

1. Using the 8-bit floating-point design (excess 3) we used in class, can you
   figure out the exponent and mantissa portions of the floating-point number
   representation for any power of 2 decimal normalized number such as 2n?
   Justify your answer. (Recall that any floating-point number can be formatted
   as +/&minus; 1.(mantissa) &times; 2<sup>exponent</sup>).
   1. mantissa = ???
   1. exponent = ???

1. The following simple program displays all characters in the standard ASCII
   table.
   1. Modify the program to display two lines, one containing all upper case
      letters in the English alphabet and one containing all lower case letters.
      You MUST use hexadecimal codes.
      ```c
      // printf
      #include <stdio.h>
      // EXIT_SUCCESS
      #include <stdlib.h>

      int main (void) {
        char c;

        /* Starting a character with \x means that we're providing the hexadecimal
         * value of the intended character from the ASCII table. */
        for (c='\x00'; c<'\x7F'; c++) {
          printf("%c ", c);
        }
        printf("%c\n", c);

        return EXIT_SUCCESS;
      }
      ```
   1. (Extra credit) Modify the program to print the alphabet of a language of
      your choosing (other than Latin/English). You’ll need to do some research
      to figure out how to use Unicode instead of ASCII in C (hint: changing
      locale might help).

1. Go to
   [this](http://www.csbsju.edu/computerscience/curriculum/launch/default.htm)
   webpage and launch the Data Representation program (Click on it and then
   click Open). If you’re working on Linux instead of Windows, go to
   Applications\>CSBSJU\>Computer Science\>Launch Page Apps\>Data Representation
   and then click to maximize in order to see all text fields and buttons. This
   simulator program is a tool to assist beginners in learning several different
   methods that are used to represent data inside of a computer. You change the
   values of the bit patterns by clicking on the individual bits. They toggle
   between 0 and 1 when clicked and the corresponding value is displayed in the
   text boxes on the right side of the screen. You can also type numeric values
   directly into the white text boxes on the right of the screen and the value
   typed will be translated into the appropriate bit pattern AFTER YOU PRESS the
   "Enter" key.

   The type of data being displayed and the length of the words can both be
   changed to suit the user’s needs. There is a button on the bottom, just right
   of the quit button that says "8 bit words". To change the word length, you
   click on it. It will change to 16, then to 32, then to 64, and, finally, back
   to 8. Go through these categories using the button. There is also a button
   labeled "Hexadecimal" that can be used to select the type of data to be
   displayed. This is the data type button. Click on it to see what happens. We
   will be working with 16-bit floating-point numbers so set the word length
   button to "16 bit words" and the type button to "Real".

   Time to put on your detective hat! In this problem, you are asked to conduct
   a scientific investigation to figure out the floating-point notation along
   with the excess value for floating-point numbers used in this simulator. This
   boils down to inputting real numbers into the text box (and hitting Enter)
   and observing the resulting bit patterns. You need to consider different ways
   of breaking up the bit pattern by assigning a location and a certain number
   of bits to the sign portion, exponent portion and the significand/mantissa
   portion. Please note that the simulator uses an IEEE-based notation similar
   to the one discussion in class. I suggest you try to figure out the location
   of the sign bit first, followed by the number of bits and the location of
   exponent bits (Hint: examine powers of 2 as such numbers always have a zero
   significand/mantissa!). The remaining bits should be the
   significand/mantissa bits.

   ANSWER THE FOLLOWING QUESTIONS WITH JUSTIFICATIONS. Answers alone are not
   acceptable.
   1. Find the location of the sign bit:
   1. Find the number and location of the exponent bits:
   1. Find the number of location of the mantissa bits:
   1. What is the excess value used in this design?
   1. Show the final design for the number indicating the sign bit with an S,
      each exponent bit with an E and each mantissa bit with an M such as [S] [E
      E E] [M M M M] for our class example.
   1. Find the bit pattern (or patterns if more than one exist) used for the
      following special values:
      * Zero:
      * Positive infinity:
      * Negative infinity:
      * Not a number (NaN):
   1. Find the range in binary AND in decimal for positive normalized numbers
   1. Find the range in binary AND in decimal for positive denormalized numbers
