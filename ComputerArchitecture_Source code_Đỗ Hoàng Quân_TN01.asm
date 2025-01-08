.data
array1: .space 196
array2: .space 196
file1: .asciiz "testoutPlayer1.txt"
file2: .asciiz "testoutPlayer2.txt"
msg1: .asciiz "Moves of Player1.\n"
msg2: .asciiz "Moves of Player2.\n"
msg3: .asciiz "Coordinate: Row of the box - Column of the box\n"
msg4: .asciiz " - "

Instruction1: .asciiz "Welcome to Battleship - A strategic board game between 2 players.\n"
Instruction2: .asciiz "The battle takes place on a 7x7 grid map. "
Instruction3: .asciiz "Each player will have exactly 6 ships: 3 2x1 ships, 2 3x1 ships, and 1 4x1 ship.\n"
Instruction4: .asciiz "Firstly, the first player inserts the location of all of his/her ships. Than, the second player do the same thing.\n"
Instruction5: .asciiz "A ship location is indicated by the coordinates of the bow and the stern of the ship.\n"
Instruction6: .asciiz "So, for each ship, the player should insert 4 integer numbers, each number is from 0 to 6: The row, column of the bow, and the row, column of the stern, respectively.\n"
Instruction7: .asciiz "Note that the coordinate of the row of the bow is greater than or equal to that of the stern, as well as the coordinate of the column of the bow and stern.\n"
Instruction8: .asciiz "The ship will occupy all the cells the it is lying on. "
Instruction9: .asciiz "Note that, the ships can not overlap with each other.\n"
Instruction10: .asciiz "Additionally, if you want to re-insert the coordinate of the bow and stern of a ship, insert the character 'R', the program will let you re-insert the previous coordinate.\n"
Instruction11: .asciiz "However, you can't re-insert the coordinate of a ship once you have started to insert the coordinate of the next ship (or you cannot re-insert the column of stern).\n"
Instruction12: .asciiz "Also, if you want to re-insert the coordinate of all of your ships, just insert the character 'E'.\n"
Instruction13: .asciiz "However, you can't re-insert your ships once you have finished inserting all your fleet.\n"

Kind1: .asciiz "Insert the 4x1 ship.\n"
Kind2: .asciiz "Insert the 3x1 ship.\n"
Kind3: .asciiz "Insert the 2x1 ship.\n"
RB: .asciiz "Insert row of bow.\n"
CB: .asciiz "Insert column of bow.\n"
RS: .asciiz "Insert row of stern.\n"
CS: .asciiz "Insert column of stern.\n"
ReInsertFleet1: .asciiz "Re-insert the entire fleet of Player1.\n"
ReInsertFleet2: .asciiz "Re-insert the entire fleet of Player2.\n"
ReInsertRB: .asciiz "Re-insert row of bow.\n"
ReInsertCB: .asciiz "Re-insert column of bow.\n"
ReInsertRS: .asciiz "Re-insert row of stern.\n"
BoxRow: .asciiz "Insert row of the box you want to target.\n"
BoxColumn: .asciiz "Insert column of the box you want to target.\n"

Ship11: .asciiz "Ship 1 of Player1.\n"
Ship12: .asciiz "Ship 2 of Player1.\n"
Ship13: .asciiz "Ship 3 of Player1.\n"
Ship14: .asciiz "Ship 4 of Player1.\n"
Ship15: .asciiz "Ship 5 of Player1.\n"
Ship16: .asciiz "Ship 6 of Player1.\n"
Ship21: .asciiz "Ship 1 of Player2.\n"
Ship22: .asciiz "Ship 2 of Player2.\n"
Ship23: .asciiz "Ship 3 of Player2.\n"
Ship24: .asciiz "Ship 4 of Player2.\n"
Ship25: .asciiz "Ship 5 of Player2.\n"
Ship26: .asciiz "Ship 6 of Player2.\n"

Coor11: .asciiz "Coordinate of ship 1 of Player1 (Ship 4x1):  "
Coor12: .asciiz "Coordinate of ship 2 of Player1 (Ship 3x1):  "
Coor13: .asciiz "Coordinate of ship 3 of Player1 (Ship 3x1):  "
Coor14: .asciiz "Coordinate of ship 4 of Player1 (Ship 2x1):  "
Coor15: .asciiz "Coordinate of ship 5 of Player1 (Ship 2x1):  "
Coor16: .asciiz "Coordinate of ship 6 of Player1 (Ship 2x1):  "
Coor21: .asciiz "Coordinate of ship 1 of Player2 (Ship 4x1):  "
Coor22: .asciiz "Coordinate of ship 2 of Player2 (Ship 3x1):  "
Coor23: .asciiz "Coordinate of ship 3 of Player2 (Ship 3x1):  "
Coor24: .asciiz "Coordinate of ship 4 of Player2 (Ship 2x1):  "
Coor25: .asciiz "Coordinate of ship 5 of Player2 (Ship 2x1):  "
Coor26: .asciiz "Coordinate of ship 6 of Player2 (Ship 2x1):  "

Map1: .asciiz "Map of Player 1:\n"
Map2: .asciiz "Map of Player 2:\n"

End1: .asciiz "Finished setting up for Player 1.\n"
End2: .asciiz "Finished setting up for Player 2.\n"
Start: .asciiz "Start targeting each other.\n"
Turn1: .asciiz "Turn of Player 1.\n"
Turn2: .asciiz "Turn of Player 2.\n"
Move: .asciiz "Move "
P1: .asciiz " of Player 1: "
P2: .asciiz " of Player 2: "
Announcement1: .asciiz "HIT!\n"
Announcement2: .asciiz "MISS!\n"
Result1: .asciiz "Game over. Player 1 wins.\n"
Result2: .asciiz "Game over. Player 2 wins.\n"

Fault1: .asciiz "Wrong input, please insert again.\n"
Fault2: .asciiz "Wrong size of ship, please insert again.\n"
Fault3: .asciiz "Ship overlap, please insert again.\n"

NextLine: .asciiz "\n"
space: .asciiz " "
buffer: .space 1

.text
#Instruction1
li $v0,4
la $a0,Instruction1
syscall
#Instruction2
li $v0,4
la $a0,Instruction2
syscall
#Instruction3
li $v0,4
la $a0,Instruction3
syscall
#Instruction4
li $v0,4
la $a0,Instruction4
syscall
#Instruction5
li $v0,4
la $a0,Instruction5
syscall
#Instruction6
li $v0,4
la $a0,Instruction6
syscall
#Instruction7
li $v0,4
la $a0,Instruction7
syscall
#Instruction8
li $v0,4
la $a0,Instruction8
syscall
#Instruction9
li $v0,4
la $a0,Instruction9
syscall
#Instruction10
li $v0,4
la $a0,Instruction10
syscall
#Instruction11
li $v0,4
la $a0,Instruction11
syscall
#Instruction12
li $v0,4
la $a0,Instruction12
syscall
#Instruction13
li $v0,4
la $a0,Instruction13
syscall
#EmptyLine
li $v0,4
la $a0,NextLine
syscall

#Setup map1
SetUpmap1:
move $t0,$0
la $s0,array1
loop11:
sll $t1,$t0,2
add $t1,$t1,$s0
sw $0,($t1)
addi $t0,$t0,1
bltu $t0,49,loop11

#First player's ship
addi $t0,$0,1 
loop12:
bgt $t0,6,exit1
beq $t0,1,ship11
beq $t0,2,ship12
beq $t0,3,ship13
beq $t0,4,ship14
beq $t0,5,ship15
beq $t0,6,ship16

#Ship1.1
ship11:
li $v0,4
la $a0,Ship11
syscall
li $v0,4
la $a0,Kind1
syscall
j coor11
#Ship1.2
ship12:
li $v0,4
la $a0,Ship12
syscall
li $v0,4
la $a0,Kind2
syscall
j coor11
#Ship1.3
ship13:
li $v0,4
la $a0,Ship13
syscall
li $v0,4
la $a0,Kind2
syscall
j coor11
#Ship1.4
ship14:
li $v0,4
la $a0,Ship14
syscall
li $v0,4
la $a0,Kind3
syscall
j coor11
#Ship1.5
ship15:
li $v0,4
la $a0,Ship15
syscall
li $v0,4
la $a0,Kind3
syscall
j coor11
#Ship1.6
ship16:
li $v0,4
la $a0,Ship16
syscall
li $v0,4
la $a0,Kind3
syscall
j coor11

#Row of bow
coor11:
li $v0,4
la $a0,RB
syscall
li $v0,12
syscall
move $t7,$v0
li $v0,4
la $a0,NextLine
syscall
beq $t7,'E',reFleet1
blt $t7,'0',wrong111
bgt $t7,'6',wrong111
sub $s0,$t7,'0'
j coor12
wrong111:
li $v0,4
la $a0,Fault1
syscall
j coor11

#Column of bow
coor12:
li $v0,4
la $a0,CB
syscall
li $v0,12
syscall
move $t7,$v0
li $v0,4
la $a0,NextLine
syscall
beq $t7,'E',reFleet1
beq $t7,'R',reRB1
blt $t7,'0',wrong112
bgt $t7,'6',wrong112
sub $s1,$t7,'0'
j coor13
reRB1:
li $v0,4
la $a0,ReInsertRB
syscall
j coor11
wrong112:
li $v0,4
la $a0,Fault1
syscall
j coor12

#Row of stern
coor13:
li $v0,4
la $a0,RS
syscall
li $v0,12
syscall
move $t7,$v0
li $v0,4
la $a0,NextLine
syscall
beq $t7,'E',reFleet1
beq $t7,'R',reCB1
blt $t7,'0',wrong113
bgt $t7,'6',wrong113
sub $s2,$t7,'0'
j coor14
reCB1:
li $v0,4
la $a0,ReInsertCB
syscall
j coor12
wrong113:
li $v0,4
la $a0,Fault1
syscall
j coor13

#Column of stern
coor14:
li $v0,4
la $a0,CS
syscall
li $v0,12
syscall
move $t7,$v0
li $v0,4
la $a0,NextLine
syscall
beq $t7,'E',reFleet1
beq $t7,'R',reRS1
blt $t7,'0',wrong114
bgt $t7,'6',wrong114
sub $s3,$t7,'0'
j next11
reRS1:
li $v0,4
la $a0,ReInsertRS
syscall
j coor13
wrong114:
li $v0,4
la $a0,Fault1
syscall
j coor14

#Re-insert the fleet
reFleet1:
li $v0,4
la $a0,NextLine
syscall
li $v0,4
la $a0,ReInsertFleet1
syscall
j SetUpmap1

next11:
beq $s0,$s2,sameRow11
bne $s1,$s3,wrong121
sub $t7,$s2,$s0
j next12
sameRow11:
sub $t7,$s3,$s1
next12:
beq $t0,1,case11
beq $t0,2,case12
beq $t0,3,case12
beq $t0,4,case13
beq $t0,5,case13
beq $t0,6,case13
case11:
bne $t7,3,wrong121
j next13
case12:
bne $t7,2,wrong121
j next13
case13:
bne $t7,1,wrong121
j next13
wrong121:
li $v0,4
la $a0,Fault2
syscall
j loop12

#Check overlap
next13:
mul $s4,$s0,7
add $s4,$s4,$s1
mul $s5,$s2,7
add $s5,$s5,$s3
#map1
move $t6,$s4
la $a0,array1
loop13:
sll $t7,$t6,2
add $t7,$t7,$a0
lw $t5,($t7)
beq $t5,1,wrong131
beq $s0,$s2,next14
addi $t6,$t6,7
j next15
next14:
addi $t6,$t6,1
next15:
ble $t6,$s5,loop13
j Cell1
wrong131:
li $v0,4
la $a0,Fault3
syscall
j loop12

#Update cells
Cell1:
#map1
move $t6,$s4
la $a0,array1
loop14:
sll $t7,$t6,2
add $t7,$t7,$a0
addi $t5,$0,1
sw $t5,($t7)
beq $s0,$s2,next16
addi $t6,$t6,7
j next17
next16:
addi $t6,$t6,1
next17:
ble $t6,$s5,loop14

#Print map1
li $v0,4
la $a0,Map1
syscall

move $t6,$0
loop15:
la $a0,array1
sll $t7,$t6,2
add $t7,$t7,$a0
lw $t5,($t7)
li $v0,1
move $a0,$t5
syscall
div $t4,$t6,7
mfhi $t3
beq $t3,6,endRow1
li $v0,11
addi $a0,$0,' '
syscall
j next18
endRow1:
li $v0,11
addi $a0,$0,10
syscall
next18:
addi $t6,$t6,1
blt $t6,49,loop15

li $v0,4
la $a0,NextLine
syscall
addi $t0,$t0,1
j loop12
exit1:
li $v0,4
la $a0,End1
syscall
li $v0,4
la $a0,NextLine
syscall
#End of player1


#Setup map2
SetUpmap2:
move $t0,$0
la $s0,array2
loop21:
sll $t1,$t0,2
add $t1,$t1,$s0
sw $0,($t1)
addi $t0,$t0,1
bltu $t0,49,loop21

#Second player's ship
addi $t0,$0,1 
loop22:
bgt $t0,6,exit2
beq $t0,1,ship21
beq $t0,2,ship22
beq $t0,3,ship23
beq $t0,4,ship24
beq $t0,5,ship25
beq $t0,6,ship26

#Ship2.1
ship21:
li $v0,4
la $a0,Ship21
syscall
li $v0,4
la $a0,Kind1
syscall
j coor21
#Ship2.2
ship22:
li $v0,4
la $a0,Ship22
syscall
li $v0,4
la $a0,Kind2
syscall
j coor21
#Ship2.3
ship23:
li $v0,4
la $a0,Ship23
syscall
li $v0,4
la $a0,Kind2
syscall
j coor21
#Ship2.4
ship24:
li $v0,4
la $a0,Ship24
syscall
li $v0,4
la $a0,Kind3
syscall
j coor21
#Ship2.5
ship25:
li $v0,4
la $a0,Ship25
syscall
li $v0,4
la $a0,Kind3
syscall
j coor21
#Ship2.6
ship26:
li $v0,4
la $a0,Ship26
syscall
li $v0,4
la $a0,Kind3
syscall
j coor21

#Row of bow
coor21:
li $v0,4
la $a0,RB
syscall
li $v0,12
syscall
move $t7,$v0
li $v0,4
la $a0,NextLine
syscall
beq $t7,'E',reFleet2
blt $t7,'0',wrong211
bgt $t7,'6',wrong211
sub $s0,$t7,'0'
j coor22
wrong211:
li $v0,4
la $a0,Fault1
syscall
j coor21

#Column of bow
coor22:
li $v0,4
la $a0,CB
syscall
li $v0,12
syscall
move $t7,$v0
li $v0,4
la $a0,NextLine
syscall
beq $t7,'E',reFleet2
beq $t7,'R',reRB2
blt $t7,'0',wrong212
bgt $t7,'6',wrong212
sub $s1,$t7,'0'
j coor23
reRB2:
li $v0,4
la $a0,ReInsertRB
syscall
j coor21
wrong212:
li $v0,4
la $a0,Fault1
syscall
j coor22

#Row of stern
coor23:
li $v0,4
la $a0,RS
syscall
li $v0,12
syscall
move $t7,$v0
li $v0,4
la $a0,NextLine
syscall
beq $t7,'E',reFleet2
beq $t7,'R',reCB2
blt $t7,'0',wrong213
bgt $t7,'6',wrong213
sub $s2,$t7,'0'
j coor24
reCB2:
li $v0,4
la $a0,ReInsertCB
syscall
j coor22
wrong213:
li $v0,4
la $a0,Fault1
syscall
j coor23

#Column of stern
coor24:
li $v0,4
la $a0,CS
syscall
li $v0,12
syscall
move $t7,$v0
li $v0,4
la $a0,NextLine
syscall
beq $t7,'E',reFleet2
beq $t7,'R',reRS2
blt $t7,'0',wrong214
bgt $t7,'6',wrong214
sub $s3,$t7,'0'
j next21
reRS2:
li $v0,4
la $a0,ReInsertRS
syscall
j coor23
wrong214:
li $v0,4
la $a0,Fault1
syscall
j coor24

#Re-insert the fleet
li $v0,4
la $a0,NextLine
syscall
reFleet2:
li $v0,4
la $a0,ReInsertFleet2
syscall
j SetUpmap2

next21:
beq $s0,$s2,sameRow21
bne $s1,$s3,wrong221
sub $t7,$s2,$s0
j next22
sameRow21:
sub $t7,$s3,$s1
next22:
beq $t0,1,case21
beq $t0,2,case22
beq $t0,3,case22
beq $t0,4,case23
beq $t0,5,case23
beq $t0,6,case23
case21:
bne $t7,3,wrong221
j next23
case22:
bne $t7,2,wrong221
j next23
case23:
bne $t7,1,wrong221
j next23
wrong221:
li $v0,4
la $a0,Fault2
syscall
j loop22

#Check overlap
next23:
mul $s4,$s0,7
add $s4,$s4,$s1
mul $s5,$s2,7
add $s5,$s5,$s3
#map2
move $t6,$s4
la $a0,array2
loop23:
sll $t7,$t6,2
add $t7,$t7,$a0
lw $t5,($t7)
beq $t5,1,wrong231
beq $s0,$s2,next24
addi $t6,$t6,7
j next25
next24:
addi $t6,$t6,1
next25:
ble $t6,$s5,loop23
j Cell2
wrong231:
li $v0,4
la $a0,Fault3
syscall
j loop22

#Update cells
Cell2:
#map2
move $t6,$s4
la $a0,array2
loop24:
sll $t7,$t6,2
add $t7,$t7,$a0
addi $t5,$0,1
sw $t5,($t7)
beq $s0,$s2,next26
addi $t6,$t6,7
j next27
next26:
addi $t6,$t6,1
next27:
ble $t6,$s5,loop24

#Print map2
li $v0,4
la $a0,Map2
syscall

move $t6,$0
loop25:
la $a0,array2
sll $t7,$t6,2
add $t7,$t7,$a0
lw $t5,($t7)
li $v0,1
move $a0,$t5
syscall
div $t4,$t6,7
mfhi $t3
beq $t3,6,endRow2
li $v0,11
addi $a0,$0,' '
syscall
j next28
endRow2:
li $v0,11
addi $a0,$0,10
syscall
next28:
addi $t6,$t6,1
blt $t6,49,loop25

li $v0,4
la $a0,NextLine
syscall
addi $t0,$t0,1
j loop22
exit2:
li $v0,4
la $a0,End2
syscall
li $v0,4
la $a0,NextLine
syscall
#End of player2


#Start targeting each other
#Open (for writng) file1
li $v0,13
la $a0,file1
li $a1,1
li $a2,0
syscall
move $s4,$v0

li $v0,15
move $a0,$s4
la $a1,msg3
li $a2,47
syscall

#Open (for writng) file2
li $v0,13
la $a0,file2
li $a1,1
li $a2,0
syscall
move $s5,$v0

li $v0,15
move $a0,$s5
la $a1,msg3
li $a2,47
syscall

#Start
li $v0,4
la $a0,Start
syscall
addi $t0,$0,1
addi $s6,$0,16 #Player1's cells
addi $s7,$0,16 #Player2's cells
Loop5:
div $t7,$t0,2
mfhi $t6
beq $t6,0,Player2

li $v0,4
la $a0,Turn1
syscall
#Print map1
li $v0,4
la $a0,Map1
syscall

move $t5,$0
loop16:
la $a0,array1
sll $t4,$t5,2
add $t4,$t4,$a0
lw $t3,($t4)
li $v0,1
move $a0,$t3
syscall
div $t2,$t5,7
mfhi $t2
beq $t2,6,endRow3
li $v0,11
addi $a0,$0,' '
syscall
j next111
endRow3:
li $v0,11
addi $a0,$0,10
syscall
next111:
addi $t5,$t5,1
blt $t5,49,loop16

j InsertRow

Player2:
li $v0,4
la $a0,Turn2
syscall
#Print map2
li $v0,4
la $a0,Map2
syscall

move $t5,$0
loop26:
la $a0,array2
sll $t4,$t5,2
add $t4,$t4,$a0
lw $t3,($t4)
li $v0,1
move $a0,$t3
syscall
div $t2,$t5,7
mfhi $t2
beq $t2,6,endRow4
li $v0,11
addi $a0,$0,' '
syscall
j next211
endRow4:
li $v0,11
addi $a0,$0,10
syscall
next211:
addi $t5,$t5,1
blt $t5,49,loop26

#Row of box
InsertRow:
li $v0,4
la $a0,BoxRow
syscall
li $v0,12
syscall
move $t5,$v0
li $v0,4
la $a0,NextLine
syscall
blt $t5,'0',wrong31
bgt $t5,'6',wrong31
sub $s0,$t5,'0'
j InsertColumn
wrong31:
li $v0,4
la $a0,Fault1
syscall
j InsertRow

#Column of box
InsertColumn:
li $v0,4
la $a0,BoxColumn
syscall
li $v0,12
syscall
move $t5,$v0
li $v0,4
la $a0,NextLine
syscall
blt $t5,'0',wrong32
bgt $t5,'6',wrong32
sub $s1,$t5,'0'
j next8
wrong32:
li $v0,4
la $a0,Fault1
syscall
j InsertColumn

next8:
#Write to file just opened
beq $t6,1,move1
beq $t6,0,move2
#Move of Player1
move1:
li $v0,15
move $a0,$s4
la $a1,Move
li $a2,5
syscall

addi $t7,$t7,1
div $t4,$t7,10
mfhi $t3
addi $t4,$t4,'0'
addi $t3,$t3,'0'
#First digit
li $v0,15
sb $t4,buffer
move $a0,$s4
la $a1,buffer
li $a2,1
syscall
#Second digit
li $v0,15
sb $t3,buffer
move $a0,$s4
la $a1,buffer
li $a2,1
syscall

li $v0,15
move $a0,$s4
la $a1,P1
li $a2,14
syscall

li $v0,15
addi $t3,$s0,'0'
sb $t3,buffer
move $a0,$s4
la $a1,buffer
li $a2,1
syscall

li $v0,15
move $a0,$s4
la $a1,msg4
li $a2,3
syscall

li $v0,15
addi $t3,$s1,'0'
sb $t3,buffer
move $a0,$s4
la $a1,buffer
li $a2,1
syscall 

li $v0,15
move $a0,$s4
la $a1,space
li $a2,1
syscall
j next9

#Move of Player2
move2:
li $v0,15
move $a0,$s5
la $a1,Move
li $a2,5
syscall

div $t4,$t7,10
mfhi $t3
addi $t4,$t4,'0'
addi $t3,$t3,'0'
#First digit
li $v0,15
sb $t4,buffer
move $a0,$s5
la $a1,buffer
li $a2,1
syscall
#Second digit
li $v0,15
sb $t3,buffer
move $a0,$s5
la $a1,buffer
li $a2,1
syscall

li $v0,15
move $a0,$s5
la $a1,P2
li $a2,14
syscall

li $v0,15
addi $t3,$s0,'0'
sb $t3,buffer
move $a0,$s5
la $a1,buffer
li $a2,1
syscall

li $v0,15
move $a0,$s5
la $a1,msg4
li $a2,3
syscall

li $v0,15
addi $t3,$s1,'0'
sb $t3,buffer
move $a0,$s5
la $a1,buffer
li $a2,1
syscall 

li $v0,15
move $a0,$s5
la $a1,space
li $a2,1
syscall
j next9

next9:
beq $t6,0,map1
#map2
mul $s2,$s0,7
add $s2,$s2,$s1
la $t4,array2
sll $t3,$s2,2
add $t4,$t4,$t3
lw $t7,($t4)
beq $t7,0,Miss2
li $v0,4
la $a0,Announcement1
syscall
#Print result to file
li $v0,15
move $a0,$s4
la $a1,Announcement1
li $a2,5
syscall
#NewLine
li $v0,4
la $a0,NextLine
syscall
sw $0,($t4)
sub $s7,$s7,1
beq $s7,$0,exit31
j next10
Miss2:
li $v0,4
la $a0,Announcement2
syscall
#Print result to file
li $v0,15
move $a0,$s4
la $a1,Announcement2
li $a2,6
syscall
#NewLine
li $v0,4
la $a0,NextLine
syscall
j next10

#map1
map1:
mul $s2,$s0,7
add $s2,$s2,$s1
la $t4,array1
sll $t3,$s2,2
add $t4,$t4,$t3
lw $t7,($t4)
beq $t7,0,Miss1
li $v0,4
la $a0,Announcement1
syscall
#Print result to file
li $v0,15
move $a0,$s5
la $a1,Announcement1
li $a2,5
syscall
#NewLine
li $v0,4
la $a0,NextLine
syscall
sw $0,($t4)
sub $s6,$s6,1
beq $s6,$0,exit32
j next10
Miss1:
li $v0,4
la $a0,Announcement2
syscall
#Print result to file
li $v0,15
move $a0,$s5
la $a1,Announcement2
li $a2,6
syscall
#NewLine
li $v0,4
la $a0,NextLine
syscall
j next10

next10:
add $t0,$t0,1
j Loop5

#Player1 wins
exit31:
li $v0,4
la $a0,Result1
syscall
j exit
#Player2 wins
exit32:
li $v0,4
la $a0,Result2
syscall
j exit

exit:
#Close the file
li $v0,16
move $a0,$s4
syscall

li $v0,16
move $a0,$s5
syscall
