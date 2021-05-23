/********************************************************************/
/* Purpose: Solving 'AquaQ Challenge Hub' contests using KDB+
/* Challenge #1: Rose by any other name https://challenges.aquaq.co.uk/challenge/1
/* Date: May 2021
/* Company: Dattendriya Data Science Solutions
/* Author: Dinesh K
/********************************************************************/

/--------------Q-Script----------------------------------/
:{hex:"0123456789abcdef";hextxt:?[not x in hex;"0";x];rm:(count hextxt) mod 3;r:?[0<>rm;3-rm;rm];paddedhex:"0"^((count hextxt)+r)$hextxt;""sv 2#'("i"$(count paddedhex)%3) cut paddedhex}  "do you think that maybe like, 1 in 10 people could be actually robots?";
/---------------------------------------------------------/
/Ans:"d0000d"
