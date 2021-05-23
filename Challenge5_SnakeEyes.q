/********************************************************************
/* Purpose: Solving 'AquaQ Challenge Hub' contests using KDB+
/* Challenge 5: Snake Eyes https://challenges.aquaq.co.uk/challenge/5
/* Date: May 2021
/* Company: Dattendriya Data Science Solutions
/* Author: S. Denakaran
/********************************************************************
fun:{[ind;val1;val2;res]
     text:string "LRUDDLRDLLDRUUUURLUDLLDLUDRURRDLUDRDURUURDLRULDULLRDRLLLDRDRRRLLDLRUUUDRLRDRLDRRUURDRLUDUUDUDLLDRULRLDRRLUUURRDDUDRDRURRLRRLLDRUUURLLRLRURRRUDUDURUDRURDRDDDURDLUDDLDUDRULDRULURLUULLLURDRLDUDRDUDRLDDRUULLLULRLDUURUUDRDLLDRRDRLLRUUURLDRULUDDRDDLDRURURR";
     maxind:(count  text)-1;
     
     text:text[ind];
     
     m:val1;
     
     
     l1:((m[1;1];m[0;0];m[0;2]);(m[0;1];m[1;0];m[1;2]));
     r1:((m[0;1];m[1;0];m[0;2]);(m[1;1];m[0;0];m[1;2]));
     d1:((m[0;2];m[0;1];m[1;0]);(m[1;2];m[1;1];m[0;0]));
     u1:((m[1;2];m[0;1];m[0;0]);(m[0;2];m[1;1];m[1;0]));
     
     n:val2;
     
     l2:((n[1;1];n[0;0];n[0;2]);(n[0;1];n[1;0];n[1;2]));
     r2:((n[0;1];n[1;0];n[0;2]);(n[1;1];n[0;0];n[1;2]));
     d2:((n[0;2];n[0;1];n[1;0]);(n[1;2];n[1;1];n[0;0]));
     u2:((n[1;2];n[0;1];n[0;0]);(n[0;2];n[1;1];n[1;0]));
    
     val1:$[text like "L*";l1;$[text like "R*";r1;$[text like "D*";d1;u1]]];
     val2:$[text like "L*";l2;$[text like "R*";r2;$[text like "D*";d2;u2]]];

     res:$[val1[0;0]=val2[0;0];ind+res;res];
     res:$[ind=maxind;:res;res];
     ind:ind+1;
     .z.s[ind;val1;val2;res]
 };
 fun[0;(1 2 3;6 5 4);(1 3 2;6 4 5);0]
//solution:10704