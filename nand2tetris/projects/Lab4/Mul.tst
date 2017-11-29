// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/02/FullAdder.tst

load Mul.hdl,
output-file Mul.out,
compare-to Mul.cmp,
output-list x%B1.4.1 y%B1.4.1 p%B1.8.1 ans%B1.4.1 overflow%B5.1.5;

set x %B0100,
set y %B0000,
set c 0,
eval,
output;

set x %B1000,
set y %B1111,
eval,
output;

set x %B0101,
set y %B0001,
eval,
output;

set x %B0101,
set y %B1010,
eval,
output;

set x %B0100,
set y %B0010,
eval,
output;

set x %B0010,
set y %B0010,
eval,
output;

set x %B0110,
set y %B0011,
eval,
output;

set x %B0101,
set y %B0011,
eval,
output;