// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/02/FullAdder.tst

load RCA.hdl,
output-file RCA.out,
compare-to RCA.cmp,
output-list a%B1.4.1 b%B1.4.1 sum%B1.4.1 carry%B3.1.3;

set a %B0100,
set b %B0000,
set c 0,
eval,
output;

set a %B1000,
set b %B1111,
eval,
output;

set a %B0101,
set b %B1101,
eval,
output;

set a %B0101,
set b %B1010,
eval,
output;

set a %B1111,
set b %B1111,
eval,
output;