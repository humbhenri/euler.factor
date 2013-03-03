! Copyright (C) 2013 Your name.
! See http://factorcode.org/license.txt for BSD license.
USING: kernel math math.ranges sequences prettyprint 
compiler.tree.propagation.call-effect arrays ;
IN: euler

! problem 1
! If we list all the natural numbers below 10 that are 
! multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
! Find the sum of all the multiples of 3 or 5 below 1000.
: prob1 ( -- n ) 1000 [1,b) [ [ 3 mod 0 = ] [ 5 mod 0 = ] bi or ] filter sum ;


! problem 2
! By considering the terms in the Fibonacci sequence whose values
! do not exceed four million, find the sum of the even-valued terms.
: prob2 ( -- n ) 
{ 1 2 } [ dup last2 + [ suffix ] keep 4000000 < ] loop but-last [ even? ] filter sum ;