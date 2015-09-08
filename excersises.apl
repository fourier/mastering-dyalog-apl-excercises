C5 FAIL

C6 3+4*A≥B

C7 CORRECTED
3 <- (A != 0 and B !=0)
0 <- (A != 0 and B == 0)
Zilde <- (A == 0)

0rX - Zilde
1rX - X

so (A!=0) r3*(B!=0)

C8 CORRECTED
A = 0 0 1 1
B = 0 1 0 1

0 min 1 -> 0
1 min 1 -> 1
0 min 0 -> 0
min -> and
0 max 1 -> 1
1 max 1 -> 1
0 max 0 -> 0
max -> and

C9 BORING

C10.a CORRECT
0 > 0 -> 0
0 >= 0 -> 1
0 = 1 -> 0
0 <= 0 -> 1
0 < 1 -> 1

C10.b CORRECT
1 0 0 1 0

C10.c ERROR

C10.d CORRECT
2 1

C11 CORRECT
+/Tex in 'e'

C12 CORRECT
2 r Z -> 1 7 <- take 2 first
+ -/- Z -> 20 reduce + column-wise gives 20
Z = 9 -> 0
         0
         1
         0
means Z is a column of 4 elements with 3th = 9
1 + 7 + 9 + x = 20 -> x = 3
Z = 1
    7
    9
    3

C13 CORRECT
Z = 0 -> 0 1 0 0
         1 0 0 1
means Z is matrix of structure:
         ? 0 ? ?
         0 ? ? 0
         
+/[2] Z -> 20 6 means
 sum first row = 20
 sum 2nd row = 6

+/[1] Z -> 8 7 6 5 means
sum 1st column = 8 -> Z[1][1] = 8
sum 2nd column = 7 -> Z[2][2] = 7 
sum 3rd column = 6 -> Z[1][3] + Z[2][3] = 6
sum 4th column = 5 -> Z[1][4] = 5

8 + x + 5 = 20
7 + y = 6
x = 7
y = -1

Z = 8 0  7 5
    0 7 -1 0

C14 CORRECT
irTex -> all indexes
(Tex in e) / irTex

C15 CORRECT, but alternative solution
(1 0 1 0) / Vec
(2|irVec) /Vec

C16 no variable Prod

C17 CORRECT
((vec >= 20) and vec < 30) / vec

C18 FAIL
Vec<- (Min 30, Vec) Max 20

C19 PARTIALLY CORRECT
C19.a unbalanced parens
C19.b division by zero
C19.c ? (unary minus applicable only to numbers, not variable)
C19.d array size mismatch
C19.e ? i argument could not be negative

C20 CORRECT
12+(i17)x11

C21
PCodes <- 56 66 19 37 44 20 18 23 68 70 82
Prices <- 9  27 10 15 12 5  8  9  98 7  22
Wanabuy <- 37 1 70 20 19 2 82 5 23 10
code1 quantity1 code2 quantity2 etc.

1. construct 2 column matrix with codes
1st column-  codes, 2nd -amount
wb <- ((0.5 x rWanabuy), 2) r Wannaby
2. select all prices by the 1st row
positions in prices which match codes:
(PCodes in wb[1;])/irPCodes
pricesInList <- Prices[(Pcodes in wb[1;])/irPcodes]

3. reduce results: +/ (pricesInList * wb[2;])

C23
(0=(⍳8)|8)/⍳8

D1
Extract←{(⍺≥⍳⍴⍵)/⍵}

D2
Ignore←{(⍺<⍳⍴⍵)/⍵}

D3
Reverse←{⍵[1+(⍴⍵)-⍳⍴⍵]}

D4
 res←Totalize A;size
 size←1+⍴A
 res←size⍴0
 res[⍳(⍴A)]←A
 res[;size[2]]←+/res
 res[size[1];]←+/[1]res

D5
 res←Lengths str;pos
 pos←0,(str=' ')/⍳⍴str
 res←((str=' ')/⍳⍴str),1+⍴str
 res←(res-pos)-1

D6
 To←{⍺,⍺+⍳(⍵-⍺)}



D11
 MaxPlace←{
     vec←,⍵
     val←⌈/vec
     pos←vec⍳val
     numCols←(⍴⍵)[2]
     col←numCols|pos
     row←1+(pos-col)÷numCols
     ⎕←'The greatest value: ',⍕val,' is in row ',⍕row,', column ',⍕col
 }

D12
result←v Convert type;vec
vec←,v
:If ∧/type='F-C'
    result←5×(vec-32)÷9
:Else
    result←32+9×vec÷5
:EndIf

D13
acc←LoopSum v;acc;vec
 vec←,v
 acc←0
 :For i :In ⍳⍴vec
     acc←acc+vec[i]
 :EndFor

D14
 reverted←ReverLoop r
 reverted←''
 :For c :In r
     reverted←c,reverted
 :EndFor

G-1
1. 2 ¯3↑XG1
2. ¯2 4↑XG1
3. ¯3↑[2]4↑[2]XG1
4. ¯1 2↓XG1
5. 1 ¯1↓XG1
6. ¯1↓[2]1↓[2]XG1

G-2
4 6↑XG1

G-3
ShowVowels str
  str,[0.5](str∊'aeiouy')\'↑'

G-4
res←Contraction X;size;nonzeros;indexes;vec
 size←⍴X
 vec←,X
 indexes←(vec≠0)/⍳⍴vec
 nonzeros←(vec≠0)/vec
 res←size,nonzeros,[0.5]indexes

m←Restore sp;size;v
 size←sp[;1]
 v←(×/size)⍴0
 v[1 1↓sparse]←¯1 1↓sparse
 m←size⍴v

G-5
 p←char Whiten phrase;nonchars
 nonchars←(phrase≠char)
 nonchars\nonchars/phrase
 
G-6
 title Ontop mat;width;offset
 ⍝ drop the first of sizes(rows)
 width←1↓⍴mat
 ⍝ maximum of 0 and 0.5*(width-len title)
 offset←0⌈⌈0.5×width-⍴title
 ⍝ concatenate offset spaces with title
 ⍝ and take only width elements to 
 ⍝ comply with matrix sizes
 title←width↑(offset⍴' '),title
 ⍝ comma bar = ,[1], concatenate 
 ⍝ vertically. The '-' character will
 ⍝ be expanded to the width of matrix
 ⎕←title⍪'-'⍪mat


G-8
res←N Free vec;tmp
 ⍝ construct a matrix of the
 ⍝ N original vectors
 ⍝ and shift them 0..N
 ⍝ The column with only zeros
 ⍝ is the column which number is
 ⍝ what we are looking for
 tmp←(¯1+⍳N)⌽(N,⍴XG8)⍴XG8
 ⍝ find the column with zeros only
 ⍝ by reducing by columns (/[1])
 ⍝ with 'or' operation. The 0 in
 ⍝ result will mean column we are
 ⍝ searching, so negate it to get 1
 res←~∨⌿tmp
 ⍝ get the index of these columns
 ⍝ and pick the 1st one
 res←1↑res/⍳⍴XG8

G-9
 res←N Split tbl;sizes
 sizes←⍴tbl
 ⍝ size of an intermediate structure:
 ⍝ N blocks (which later will become
 ⍝ columns), rows/N rows (per column),
 ⍝ table width(text width)
 sizes←N,(⌈(1↑sizes)÷N),sizes[2]
 ⍝ trick: using 'take' to add
 ⍝ 'missing' empty rows to fill the
 ⍝ last column and avoid repetition
 ⍝ of the text; and resize the
 ⍝ 'adjusted' vector.
 res←sizes⍴((sizes[1]×sizes[2]),2↓sizes)↑XG9
 ⍝ add a space at the end of each row
 ⍝ and store the updated sizes
 sizes←⍴res←res,' '
 ⍝ Transpose: if sizes were (3,4,9), i.e.
 ⍝ 3 blocks by 4 rows of width 9, the new
 ⍝ sizes will be (of the transposed array):
 ⍝ 1 2 3->2 1 3, so it will be (4,3,9) i.e.
 ⍝ 4 blocks of 3 rows of width 9
 res←2 1 3⍉res
 ⍝ and finally 'flatten' the array,
 ⍝ reducing by one dimension
 res←(4,sizes[1]×sizes[3])⍴res

G-10
res←nums Expand10 words;size;pos;col1;spaces
 size←⍴words
 ⍝ Positions of the numbers every time
 ⍝ they change calculated as a vector minus
 ⍝ itself with shifted with one position,
 ⍝ then drop the last element
 pos←0≠¯1↓(nums,0)-0,nums
 ⍝ 1st column is fomatted numbers in fields
 ⍝ of 4 characters max, then reshaped to
 ⍝ number of rows x 4
 col1←((1↑⍴nums),4)⍴4 0⍕nums
 ⍝ the format aligns by right, so let's rotate
 ⍝ the 1st column by number of spaces in each
 ⍝ row
 col1←(+/' '=col1)⌽col1
 res←col1,words
 ⍝ calculate size of the new vector used in
 ⍝ expand function: it should consist of
 ⍝ number of the elements in original +
 ⍝ number of empty lines. Fill this vector
 ⍝ with 1s
 spaces←(+/¯1,(1↑size),pos)⍴1
 ⍝ Create a list of positions where to
 ⍝ insert empty lines, except first position
 pos←1↓pos/⍳⍴pos
 ⍝ adjust it considering every insert will
 ⍝ increase indexes, therefore we need to
 ⍝ add to every index numbers like 1,2 ... etc
 pos←¯1+pos+⍳⍴pos
 ⍝ ok, now we have indexes of the positions
 ⍝ in the new array where will be spaces.
 ⍝ so set an appropriate positions to 0 in vector
 ⍝ for expansion
 spaces[pos]←0
 ⍝ now result - perform expand on a res
 res←spaces⍀res


I-4
⍝ here first we set migration level 3 to have the same behavior as
⍝ IBM APL2 for Partition operation.
⎕ML←3
⍝ Next we need to prepare partitions to have them in ascending order:
⍝ For this we use pattern A⍳A to find positions of elements in the
⍝ vector itself. Since they are already sorted and we need only to
⍝ be sure what the index is growing, it will give us indexes like
⍝ 1 1 2 2 2 3 3 4 5 5 6
⍝ and finally we partition and apply +/ to all elements in vector
⍝ of vectors
+/¨(I4Ref⍳I4Ref)⊂I4Qty

I-5
⍝ This doesn't work in GNU APL, but works in Dyalog APL
I5Big⍳I5Small

I-6
⍝ The idea is to create a vector like 000111001100 to select subwords
⍝ using Partition with ⎕ML = 3.
⎕ML←3
⍝ create an array of zeros
bin←(⍴I6Text)⍴0
⍝ generate a list of indexes like 6 7 8 9 10 and replace elements of
⍝ this array with 1s
bin[∊{(¯1+⍳5)+⍵}¨I6Start]←1
⍝ finally use partition to get text
⍝ alternatively could use simply bin/I6Text
∊bin⊂I6Text

I-7
⍝ Again as in I-6 create an emtpy list of 0s
bin←(⍴I6Text)⍴0
⍝ create list of indexes to be replaced with 1s:
⍝ combine 2 list one on top of another and apply
⍝ lambda-function along to columns to creat a
⍝ list of indexes: 1st argument is a position and
⍝ second argument is a size of word
indexes←∊{⍺+¯1+⍳⍵}⌿I6Start,[0.5]I6Long
bin[indexes]←1
bin/I6Text
⍝ NOTE:
⍝ The answer from the book:
I6Text[⊃,/¯1+I6Start+⍳¨I6Long]
⍝ Here they apply ⍳ to all elements of I6Long, make sense
⍝ then they add I6Start to this vector of vectors
⍝ then subtract -1 like I do
⍝ and concat all vectors to one. Finally disclose it
⍝ and use as a vector of indexes to select elements
⍝ I can uptimize a little using Enlist from IBM APL:
I6Text[∊¯1+I6Start+⍳¨I6Long]
