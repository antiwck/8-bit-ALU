# 8-bit-ALU
# The 8-bit unsigned binary ALU compute the corresponding output based on the selected operation.

The program is compiled in Intel Quartus Prime and run under the testbench to perform the functional computation.
The 8-bit unsigned binary ALU takes two 8-bit number in binary and compute the result.
The ALU consists of 20 operations which are:-
1. Addtion
2. Subtraction
3. Multiplication
4. Division
5. Increment
6. Decrement
7. Negation
8. Logical shift left
9. Logical shift right
10. Arithmetic shift left
11. Arithmetic shift right
12. Rotate left
13. Rotate right
14. Logical AND
15. Logical OR
16. Logical XOR
17. Logical NOR
18. Logical NAND
19. Logical XNOR
20. Comparator

Computation: -
A : 11110110 (246)
B : 00001101 (13)
S : 00000 to 10011

<br />
1. Addition
<br />
<p align="center">
  <img src="Sources/1. Addition.jpg"><br />
  Addition computation
</p>
Sum    : 00000011 (3)<br />
Carry  : 1xxxxxxxx (256) <br />
Result : 259<br />

<br />
2. Subtraction
<br />
<p align="center">
  <img src="Sources/2. Subtraction.jpg"><br />
  Subtraction computation
</p>
Difference  : 11101001 (233)<br />
Borrow      : 0xxxxxxxx (0)<br />
Result      : 233<br />
