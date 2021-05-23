/********************************************************************/
/* Purpose: Solving 'AquaQ Challenge Hub' contests using KDB+
/* Challenge #0: What's a numpad? https://challenges.aquaq.co.uk/challenge/0
/* Date: May 2021
/* Company: Dattendriya Data Science Solutions
/* Author: Dinesh K
/********************************************************************/
/---------------------------------Q-Script---------------------------/
/Step 1->initializing the list as per order (0 1 2 .. 9) and store it in global variable -> To call it inside the function
.glb.list:("";"";"abc";"def";"ghi";"jkl";"mno";"pqrs";"tuv";"wxyz");
/Step 2 -> Store the input values in variable called Input
input:(6 3;4 2;0 1;7 4;6 3;0 1;8 1;4 2;3 2;9 3;0 1;4 2;2 1;8 3;3 2;0 1;4 3;6 2;8 1;3 2;7 3;6 2;3 2;8 1;0 1;6 3;6 2;0 1;2 3;6 3;6 1;7 1;8 2;8 1;3 2;7 3;7 4;0 1;6 2;6 3;9 1);
/#step 3 - Performing the operation.
:{f:{.glb.list[x][y-1]};idx1:"I"$x[0];idx2:"I"$x[1];f[idx1][idx2]} each string input
/***************************************************************************/

//Ans:"oh so they have internet on computers now"
