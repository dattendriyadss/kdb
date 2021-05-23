/********************************************************************
/* Purpose: Solving 'AquaQ Challenge Hub' contests using KDB+
/* Challenge 3: Short walks https://challenges.aquaq.co.uk/challenge/3
/* Date: May 2021
/* Company: Dattendriya Data Science Solutions
/* Author: S. Denakaran
/********************************************************************
fun:{[r;c;ind;initval]
    m:(0 0 1 1 0 0;0 1 1 1 1 0;1 1 1 1 1 1;6#1;0 1 1 1 1 0;0 0 1 1 0 0);
   val:string "LDRDLRDRDDRLRLDLLLUULURURLDULUUDRRDDRUDDRLRRULRDUDRUDRRLRDLDRULLDUUULDRRLDDLURLURRURLRLRUULDULDLLLUDLULDUUUDLDLLUUULDDLUURDUDDRULRULRULRDULRULULRLRDRDRULLRDRRRULLRDRDDRDULDDDUUDDRDRLRRRUUDDDULULLULURURLURULRDRUDLULRULLRRLLLRRRLRRLUULDUUUULLRDRRUULULURRURDRLDLLRUDULDRULDDRURLDRDLRRULRDRRUDRURULDURRULDLDULRLLLRLUURDLUUURUDLRLUUULULULUDRRDRUDLUDLRUUUDRRDDLLUDLDURDLRRRDRDLRLRRUDLRDRUUDULLDDRRUUDDRDRDLDRLLRRRUDLRDRUDDRURLLLDDLRRDUDDUDULURDLULDDLDRRRLLLRLDUURDUDULDDRRDRDLLDRDRRLLULLLRLURLLDDLDLRDUUUDR";
   indcount:count val;
   val:val[ind];
  
   rb:r;
   cb:c;
   r:$[val like "U*";r-1;$[val like "D*";r+1;rb]];
   c:$[val like "R*";c+1;$[val like "L*";c-1;cb]];
   
   ind:ind+1;
  
   matvalb:m[c;r];
   matval:$[(null matvalb)or(matvalb=0);rb+cb;r+c];
   matval:initval+matval;
   
   matval:$[ind=indcount;:matval;matval];
  
   r:$[(null matvalb)or(matvalb=0);rb;r];
   c:$[(null matvalb)or(matvalb=0);cb;c];
   

   .z.s[r;c;ind;matval]
 };
 
 fun[0;2;0;0]
//solution: 2543