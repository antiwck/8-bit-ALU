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
  <img src="Sources/1. Addition.jpg" width="400"><br />
  Addition computation
</p>
Sum    : 00000011 (3)<br />
Carry  : 1xxxxxxxx (256) <br />
Result : 259<br />

<br />
2. Subtraction
<br />
<p align="center">
  <img src="Sources/2. Subtraction.jpg" width="400"><br />
  Subtraction computation
</p>
Difference  : 11101001 (233)<br />
Borrow      : 0xxxxxxxx (0)<br />
Result      : 233<br />

<br />
3. Multiplication
<br />
<p align="center">
  <img src="Sources/3. Multiplication.jpg" width="400"><br />
  Multiplication computation
</p>
Result      : 0000110001111110 (3198)<br />

<br />
4. Division
<br />
<p align="center">
  <img src="Sources/4. Division.jpg" width="400"><br />
  Division computation
</p>
Quotient      : 00010010 (18)<br />
Remainder     : 00001100 (12)<br />

<br />
5. Increment
<br />
<p align="center">
  <img src="Sources/5. Increment.jpg" width="400"><br />
  Increment computation
</p>
A  : 11110111 (247)<br />
B  : 00001110 (14)<br />

<br />
6. Decrement
<br />
<p align="center">
  <img src="Sources/6. Decrement.jpg" width="400"><br />
  Decrement computation
</p>
A  : 11110101 (245)<br />
B  : 00001100 (12)<br />

<br />
7. Negation
<br />
<p align="center">
  <img src="Sources/7. Negation.jpg" width="400"><br />
  Negation computation
</p>
A  : 00001001 (9)<br />
B  : 11110010 (242)<br />

<br />
8. Logical left shift
<br />
<p align="center">
  <img src="Sources/8. Logical left shift.jpg" width="400"><br />
  Logical left shift computation
</p>
A  : 11101100 (236)<br />
B  : 00011010 (26)<br />

<br />
9. Logical right shift
<br />
<p align="center">
  <img src="Sources/9. Logical right shift.jpg" width="400"><br />
  Logical right shift computation
</p>
A  : 01111011 (123)<br />
B  : 00000110 (6)<br />

<br />
10. Arithmetic left shift
<br />
<p align="center">
  <img src="Sources/10. Arithmetic left shift.jpg" width="400"><br />
  Arithmetic left shift computation
</p>
A  : 11101100 (236)<br />
B  : 00011010 (26)<br />

<br />
11. Arithmetic right shift
<br />
<p align="center">
  <img src="Sources/11. Arithmetic right shift.jpg" width="400"><br />
  Arithmetic right shift computation
</p>
A  : 11111011 (251)<br />
B  : 00000110 (6)<br />

<br />
12. Rotate left
<br />
<p align="center">
  <img src="Sources/12. Rotate left.jpg" width="400"><br />
  Rotate left computation
</p>
A  : 11101101 (237)<br />
B  : 00011010 (26)<br />

<br />
13. Rotate right
<br />
<p align="center">
  <img src="Sources/13. Rotate right.jpg" width="400"><br />
  Rotate right computation
</p>
A  : 01111011 (123)<br />
B  : 10000110 (134)<br />

<br />
14. Logical AND
<br />
<p align="center">
  <img src="Sources/14. Logical AND.jpg" width="400"><br />
  Logical AND computation
</p>
Result  : 00000100 (4)<br />

<br />
15. Logical OR
<br />
<p align="center">
  <img src="Sources/15. Logical OR.jpg" width="400"><br />
  Logical OR computation
</p>
Result  : 11111111 (255)<br />

<br />
16. Logical XOR
<br />
<p align="center">
  <img src="Sources/16. Logical XOR.jpg" width="400"><br />
  Logical XOR computation
</p>
Result  : 11111011 (251)<br />

<br />
17. Logical NOR
<br />
<p align="center">
  <img src="Sources/17. Logical NOR.jpg" width="400"><br />
  Logical NOR computation
</p>
Result  : 00000000 (0)<br />

<br />
18. Logical NAND
<br />
<p align="center">
  <img src="Sources/18. Logical NAND.jpg" width="400"><br />
  Logical NAND computation
</p>
Result  : 11111011 (251)<br />

<br />
19. Logical XNOR
<br />
<p align="center">
  <img src="Sources/19. Logical XNOR.jpg" width="400"><br />
  Logical XNOR computation
</p>
Result  : 00000100 (4)<br />

<br />
20. Comparator
<br />
<p align="center">
  <img src="Sources/20. Comparator.jpg" width="400"><br />
  Comparator computation
</p>
Result  : 01 (A > B)<br />
