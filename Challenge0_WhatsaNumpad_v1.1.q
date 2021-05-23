/********************************************************************
/* Purpose: Solving 'AquaQ Challenge Hub' contests using KDB+
/* Challenge 0: What's a numpad? https://challenges.aquaq.co.uk/challenge/0
/* Date: May 2021
/* Company: Dattendriya Data Science Solutions
/* Author: S. Denakaran
/********************************************************************

 dict:(0+til 10)!("";"";("a";"b";"c");("d";"e";"f");("g";"h";"i");("j";"k";"l");("m";"n";"o");("p";"q";"r";"s");("t";"u";"v");("w";"x";"y";"z"));
 values:("6 3";"4 2";"0 1";"7 4";"6 3";"0 1";"8 1";"4 2";"3 2";"9 3";"0 1";"4 2";"2 1";"8 3";"3 2";"0 1";"4 3";"6 2";"8 1";"3 2";"7 3";"6 2";"3 2";"8 1";"0 1";"6 3";"6 2";"0 1";"2 3";"6 3";"6 1";"7 1";"8 2";"8 1";"3 2";"7 3";"7 4";"0 1";"6 2";"6 3";"9 1");
 xx:"I"$1#'values;
 yy:"I"$-1#'values;
 t:{dict[x;y-1]}'[xx;yy];
 ([]Solution:enlist t)  
    
//solution : oh so they have internet on computers now