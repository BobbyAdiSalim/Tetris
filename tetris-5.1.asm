#####################################################################
# CSCB58 Summer 2024 Assembly Final Project - UTSC
# Student1: Bobby Adi Salim, 1010110684, salimbob, bobby.salim@mail.utoronto.ca
# Student2: Rizky Rajendra Ananta Dewa, 1010179735, dewarizk, rizky.dewa@mail.utoronto.ca
#
# Bitmap Display Configuration:
# - Unit width in pixels: 4 (update this as needed) 
# - Unit height in pixels: 4 (update this as needed)
# - Display width in pixels: 256 (update this as needed)
# - Display height in pixels: 512 (update this as needed)
# - Base Address for Display: 0x10008000 ($gp)
#
# Which milestones have been reached in this submission?
# (See the assignment handout for descriptions of the milestones)
# - Milestone 1/2/3/4/5 (choose the one the applies) - 1, 2, 3, 4, 5
#
# Which approved features have been implemented?
# (See the assignment handout for the list of features)
# Easy Features:
# 1. gravity					(Num. 1)
# 2. start a new game				(Num. 3)
# 3. Display highest score			(Num. 10)
# 4. different color tetrominoes		(Num. 11)
# 5. 
# ... (add more if necessary)
# Hard Features:
# 1. Display current score			(Num. 1)
# 2. implemented full set of tetrominoes	(Num. 2)
# ... (add more if necessary)
# How to play:
# - Game starts immediately when you run the program.
# - If game over, press 'r' to retry
# - Press q to quit
# - For testing purposes, you can press 'u' to go up
# = a, s, d to go left, down, and right respectively
# - w to rotate clockwise
# - space to hard drop
# - If any part of a placed tetromino lands outside the playfield, game over
# Link to video demonstration for final submission:
# - https://www.youtube.com/watch?v=6GQRmonJr9c
#
# Are you OK with us sharing the video with people outside course staff?
# - yes
#
# Any additional information that the TA needs to know:
# - Score increases not purely based on number of lines cleared.
# - We implemented a simplified tetris scoring system:
# - You get 40 points for clearing single lines,
# - 100 points for 2 lines at once,
# - 300 points for 3 lines at once,
# - 1200 points for 4 lines at once (tetris)
#
#####################################################################

##############################################################################

.data
##############################################################################
# Immutable Data
##############################################################################
# The address of the bitmap display. Don't forget to connect it!
ADDR_DSPL:
    .word 0x10008000
# The address of the keyboard. Don't forget to connect it!
ADDR_KBRD:
    .word 0xffff0000

##############################################################################
# Mutable Data
##############################################################################

##############################################################################
# Code
##############################################################################
.text
.globl main

# Run the Tetris game.
main: 	
	#TODO: fix ugly register use
	# initialization first game
	move $s7, $zero			# s7 stores high score
	#jal display_high_score ( dont want jal btw since want function inside display_cur_score )
	
	li $a1, 0x10009c08
	li $a2, 0x00000000
	li $a0, 91
	jal DRAW_LETTER
	li $a2, 0x00ffffff
	li $a0, 48
	jal DRAW_LETTER
	
	li $a1, 0x10009c18
	li $a2, 0x00000000
	li $a0, 91
	jal DRAW_LETTER
	li $a2, 0x00ffffff
	li $a0, 48
	jal DRAW_LETTER
	
	li $a1, 0x10009c28
	li $a2, 0x00000000
	li $a0, 91
	jal DRAW_LETTER
	li $a2, 0x00ffffff
	li $a0, 48
	jal DRAW_LETTER

	li $a1, 0x10009c38
	li $a2, 0x00000000
	li $a0, 91
	jal DRAW_LETTER
	li $a2, 0x00ffffff
	li $a0, 48
	jal DRAW_LETTER
	
	li $a1, 0x10009c48
	li $a2, 0x00000000
	li $a0, 91
	jal DRAW_LETTER
	li $a2, 0x00ffffff
	li $a0, 48
	jal DRAW_LETTER
	
	li $a1, 0x10009c58
	li $a2, 0x00000000
	li $a0, 91
	jal DRAW_LETTER
	li $a2, 0x00ffffff
	li $a0, 48
	jal DRAW_LETTER
	
	li $a1, 0x10009c68
	li $a2, 0x00000000
	li $a0, 91
	jal DRAW_LETTER
	li $a2, 0x00ffffff
	li $a0, 48
	jal DRAW_LETTER
	
	li $a1, 0x10009c78
	li $a2, 0x00000000
	li $a0, 91
	jal DRAW_LETTER
	li $a2, 0x00ffffff
	li $a0, 48
	jal DRAW_LETTER
	
	li $a1, 0x10009c88
	li $a2, 0x00000000
	li $a0, 91
	jal DRAW_LETTER
	li $a2, 0x00ffffff
	li $a0, 48
	jal DRAW_LETTER

	li $a1, 0x10009c98
	li $a2, 0x00000000
	li $a0, 91
	jal DRAW_LETTER
	li $a2, 0x00ffffff
	li $a0, 48
	jal DRAW_LETTER
	
new_game:
#jal display_cur_score
	li $a1, 0x1000a808
	li $a2, 0x00000000
	li $a0, 91
	jal DRAW_LETTER
	li $a2, 0x00ffffff
	li $a0, 48
	jal DRAW_LETTER
	
	li $a1, 0x1000a818
	li $a2, 0x00000000
	li $a0, 91
	jal DRAW_LETTER
	li $a2, 0x00ffffff
	li $a0, 48
	jal DRAW_LETTER
	
	li $a1, 0x1000a828
	li $a2, 0x00000000
	li $a0, 91
	jal DRAW_LETTER
	li $a2, 0x00ffffff
	li $a0, 48
	jal DRAW_LETTER
	
	li $a1, 0x1000a838
	li $a2, 0x00000000
	li $a0, 91
	jal DRAW_LETTER
	li $a2, 0x00ffffff
	li $a0, 48
	jal DRAW_LETTER
	
	li $a1, 0x1000a848
	li $a2, 0x00000000
	li $a0, 91
	jal DRAW_LETTER
	li $a2, 0x00ffffff
	li $a0, 48
	jal DRAW_LETTER
	
	li $a1, 0x1000a858
	li $a2, 0x00000000
	li $a0, 91
	jal DRAW_LETTER
	li $a2, 0x00ffffff
	li $a0, 48
	jal DRAW_LETTER
	
	li $a1, 0x1000a868
	li $a2, 0x00000000
	li $a0, 91
	jal DRAW_LETTER
	li $a2, 0x00ffffff
	li $a0, 48
	jal DRAW_LETTER
	
	li $a1, 0x1000a878
	li $a2, 0x00000000
	li $a0, 91
	jal DRAW_LETTER
	li $a2, 0x00ffffff
	li $a0, 48
	jal DRAW_LETTER
	
	li $a1, 0x1000a888
	li $a2, 0x00000000
	li $a0, 91
	jal DRAW_LETTER
	li $a2, 0x00ffffff
	li $a0, 48
	jal DRAW_LETTER
	
	li $a1, 0x1000a898
	li $a2, 0x00000000
	li $a0, 91
	jal DRAW_LETTER
	li $a2, 0x00ffffff
	li $a0, 48
	jal DRAW_LETTER
	# initialization new game

	lw $s0, ADDR_KBRD		# s0 stores ADDR_KBRD
	li $s1, -1			# s1 stores tetromino type; -1 means the game just started; undetermined type
	move $s4, $zero			# s4 stores how many game loop cycles have passed
	li $v0, 0			# resetting
	li $v1, 0			# resetting, if $v1 = 1 , no spawn and restart
	move $s6, $zero			# s6 stores current score
	# Erase QUIT DISPLAY
	li $a0, 81
	li $a1, 0x10008f64
	li $a2, 0x00000000
	jal DRAW_LETTER
	li $a0, 85
	li $a1, 0x10008f7c
	jal DRAW_LETTER
	li $a0, 73
	li $a1, 0x10008f8c
	jal DRAW_LETTER
	li $a0, 84
	li $a1, 0x10008f9c
	jal DRAW_LETTER
	li $t2, 0x1000ff00		# t2: bottom left going horizontal
	li $t3, 0x1000af00		# t3: top left going vertical
	addiu $t5, $t3, 164		# t5: top right going vertical
	addiu $t4, $t2, 164		# t4: bottom right fixed
	li $t9, 0x00ffffff		# t9: white rgb
	
draw_h_border:
	# make white ($t9) border from $t1(top left of grid) to $t4 (top right of grid)
	# After done, make vertical border.
	bgt $t2, $t4, draw_v_border
	sw $t9, 0($t2)
	addiu $t2, $t2, 4
	j draw_h_border
	
draw_v_border:
	# make white ($t9) border from $t3(top left of grid) to $t5 ( bottom left of grid).
	# Do the same as $t4 (top right of grid) to bottom right of grid. 
	# After done ($t3 >= $t5), draw grid.
	bgt $t5, $t4, border_end
	sw $t9, ($t3)
	sw $t9, ($t5)
	addiu $t3, $t3, 256
	addiu $t5, $t5, 256
	j draw_v_border
	
border_end:
	jal DRAW_GRID
	j DRAW_SCORE_WORDS
	
######################################## RENDER TEST ########################################
#	li $a0, 2
#	li $a1, 0x1000f374
#	li $a2, 0
#	jal DRAW_TETROMINO
#	
#	li $a0, 2
#	li $a1, 0x1000f374
#	li $a2, 0
#	jal ERASE_TETROMINO
#	b QUIT
#############################################################################################
######################################## CONTROL TEST ########################################
#	li $s1, 6			# type = L
#	li $s2, 0x1000b344		# address in framebuffer
#	li $s3, 0			# rotation state = 0
#	move $a0, $s1
#	move $a1, $s2
#	move $a2, $s3
#	jal DRAW_TETROMINO
##############################################################################################

######################################## SPAWN NEW TETROMINO ########################################
spawn_new:
	beq $v1, 1, game_over		# if the last DRAW_TETROMINO returns 1, then game over; restart
	# 0 = I
	# 1 = O
	# 2 = T
	# 3 = S
	# 4 = Z
	# 5 = J
	# 6 = L
	beq $s1, -1, random_tetro
	li $t8, 0
	beqz $s1, I_handler
	
	addiu $a0, $s2, -1024
	jal TRY_CLEAR
	beq $v0, 1, next_try_clear_1
	addiu $t8, $t8, 1
next_try_clear_1:
	move $a0, $s2
	jal TRY_CLEAR
	beq $v0,1, next_try_clear_2
	addiu $t8, $t8, 1
next_try_clear_2:
	addiu $a0, $s2, 1024
	jal TRY_CLEAR
	move $a0, $t8
	beq $v0, 1, try_clear_done
	addiu $a0, $a0, 1
	b try_clear_done
	
I_handler:
	beq $s3, 1, I_handler_B
	beq $s3, 2, I_handler_C
	beq $s3, 3, I_handler_D
# I_handler_A:
	move $a0, $s2
	jal TRY_CLEAR
	move $a0, $t8
	beq $v0, 1, try_clear_done
	addiu $a0, $a0, 1
	b try_clear_done
I_handler_B:
	addiu $a0, $s2, -1008
	jal TRY_CLEAR
	beq $v0, 1, next_try_clearI_B_1
	addiu $t8, $t8, 1
next_try_clearI_B_1:
	addiu $a0, $s2, 16
	jal TRY_CLEAR
	beq $v0, 1, next_try_clearI_B_2
	addiu $t8, $t8, 1
next_try_clearI_B_2:
	addiu $a0, $s2, 1040
	jal TRY_CLEAR
	beq $v0, 1, next_try_clearI_B_3
	addiu $t8, $t8, 1
next_try_clearI_B_3:
	addiu $a0, $s2, 2064
	jal TRY_CLEAR
	move $a0, $t8
	beq $v0, 1, try_clear_done
	addiu $a0, $a0, 1
	b try_clear_done
I_handler_C:
	addiu $a0, $s2, 1024
	jal TRY_CLEAR
	move $a0, $t8
	beq $v0, 1, try_clear_done
	addiu $a0, $t8, 1
	b try_clear_done
I_handler_D:
	addiu $a0, $s2, -1024
	jal TRY_CLEAR
	beq $v0, 1, next_try_clearI_D_1
	addiu $t8, $t8, 1
next_try_clearI_D_1:
	move $a0, $s2
	jal TRY_CLEAR
	beq $v0, 1, next_try_clearI_D_2
	addiu $t8, $t8, 1
next_try_clearI_D_2:
	addiu $a0, $s2, 1024
	jal TRY_CLEAR
	beq $v0, 1, next_try_clearI_D_3
	addiu $t8, $t8, 1
next_try_clearI_D_3:
	addiu $a0, $s2, 2048
	jal TRY_CLEAR
	move $a0, $t8
	beq $v0, 1, try_clear_done
	addiu $a0, $a0, 1
	b try_clear_done

###################################### GAME OVER Function ######################################################
game_over:
	ble $s6, $s7, gameover_same_high_score
	move $s7, $s6
	li $a0, 0
	j display_high_score
gameover_same_high_score:
	li $a2, 0x00ff0000
	j draw_game_over
key_game_over:
	lw $s0, ADDR_KBRD		# s0 stores ADDR_KBRD
	# 1a. Check if key has been pressed
	lw $t0, ($s0)
	# 1b. Check which key has been pressed
	bne $t0, $zero, game_over_input
	# Sleep
	li $v0, 32
	li $a0, 10
	syscall
	b key_game_over
game_over_input:
	lw $t9, 4($s0)
	ble $t9, 112, key_game_over			# No valid keyboard input, screen stays the same
	bgt $t9, 114, key_game_over
	li $a2, 0x00000000
	
draw_game_over:
	li $a0, 71
	li $a1, 0x10008334
	jal DRAW_LETTER
	li $a0, 65
	li $a1, 0x10008348
	jal DRAW_LETTER
	li $a0, 77
	li $a1, 0x10008358
	jal DRAW_LETTER
	li $a0, 69
	li $a1, 0x10008370
	jal DRAW_LETTER
	li $a0, 79
	li $a1, 0x10008388
	jal DRAW_LETTER
	li $a0, 86
	li $a1, 0x10008398
	jal DRAW_LETTER
	li $a0, 69
	li $a1, 0x100083b0
	jal DRAW_LETTER
	li $a0, 82
	li $a1, 0x100083c0
	jal DRAW_LETTER
	beq $t9, 113 QUIT
	beq $t9, 114, retry_cleanup
	b key_game_over

retry_cleanup:
	li $a2, 0x00000000
	li $a0, 48
	li $a1, 0x1000a808
	jal DRAW_LETTER
	
	li $a1, 0x1000a818
	jal DRAW_LETTER
	
	li $a1, 0x1000a828
	jal DRAW_LETTER

	li $a1, 0x1000a838
	jal DRAW_LETTER
	
	li $a1, 0x1000a848
	jal DRAW_LETTER
	
	li $a1, 0x1000a858
	jal DRAW_LETTER
	
	li $a1, 0x1000a868
	jal DRAW_LETTER
	
	li $a1, 0x1000a878
	jal DRAW_LETTER
	
	li $a1, 0x1000a888
	jal DRAW_LETTER

	li $a1, 0x1000a898
	jal DRAW_LETTER
	
	j new_game
try_clear_done:
	li $a1, 1
	beq $a0, $a1, single_clear
	li $a1, 2
	beq $a0, $a1, double_clear
	li $a1, 3
	beq $a0, $a1, triple_clear
	li $a1, 4
	beq $a0, $a1, tetris_clear
	b zero_points

tetris_clear:
	addiu $s6, $s6, 1200
	b zero_points
	
triple_clear:
	addiu $s6, $s6, 300
	b zero_points
	
double_clear:
	addiu $s6, $s6, 100
	b zero_points

single_clear:
	addiu $s6, $s6, 40

zero_points:
	ble $s6, $s7, same_high_score
	move $s7, $s6
	li $a0, 1
	j display_high_score
same_high_score:
	j display_cur_score
	
random_tetro:
	li $v0, 42
	li $a0, 0
	li $a1, 7
	syscall				# generate random number from 0 up to and including 6
	move $s1, $a0			# s1 stores current tetromino type (random)
	li $s2, 0x1000ab44		# s2 stores address of pivot in framebuffer
	li $s3, 0			# s3 stores rotation state
	li $s5, 30			# s5 stores how many cycles per drop (gravity), lower = faster // level
#####################################################################################################
######################################## GAME LOOP ########################################
	
game_loop:
	# if s4 = s5, drop by 1, then reset s4 to 0
	bne $s4, $s5, inp_check
	move $a0, $s1
	move $a1, $s2
	move $a2, $s3
	jal ERASE_TETROMINO
	jal GO_DOWN			# v0 = 1 if collision, oherwise v0 = 0
	move $a0, $s1
	move $a1, $s2
	move $a2, $s3
	jal DRAW_TETROMINO		# v1 = 1 if something was drawn outside playfield, otherwise v1 = 0
	move $s4, $zero
	# if try to drop, but collision, then spawn new tetromino
	beq $v0, 1, spawn_new
	
inp_check:
	# 1a. Check if key has been pressed
	lw $t0, ($s0)
	# 1b. Check which key has been pressed
	# 2a. Check for collisions
	# 2b. Update locations (paddle, ball)
	beqz $t0, inp_decode_done
	move $a0, $s1
	move $a1, $s2
	move $a2, $s3
	jal ERASE_TETROMINO
	lw $a0, 4($s0)
	jal INP_DECODE			# this function updates s1, s2, s3, checks collision, reverses if collision, else continue
	
inp_decode_done:
	# 3. Draw the screen
	move $a0, $s1
	move $a1, $s2
	move $a2, $s3
	jal DRAW_TETROMINO
	# 4. Sleep
	addiu $s4, $s4, 1
	li $v0, 32
	li $a0, 10
	syscall
    	# 5. Go back to 1
    	b game_loop

###########################################################################################	
	
######################################## FUNCTIONS ########################################

#####################################################################################################
################################### CURRENT SCORE FUNCTION ##########################################
DRAW_SCORE_WORDS:
	li $a2, 0x008000ff

	li $a0, 72
	li $a1, 0x10009608
	jal DRAW_LETTER
	
	li $a0, 73
	addi $a1, $a1, 16
	jal DRAW_LETTER
	
	li $a0, 71
	addi $a1, $a1, 16
	jal DRAW_LETTER
	
	li $a0, 72
	addi $a1, $a1, 20
	jal DRAW_LETTER
	
	li $a0, 83
	addi $a1, $a1, 24
	jal DRAW_LETTER
	
	li $a0, 67
	addi $a1, $a1, 16
	jal DRAW_LETTER
	
	li $a0, 79
	addi $a1, $a1, 16
	jal DRAW_LETTER
	
	li $a0, 82
	addi $a1, $a1, 16
	jal DRAW_LETTER
	
	li $a0, 69
	addi $a1, $a1, 16
	jal DRAW_LETTER
	
	li $a2, 0x0000e000
	li $a1, 0x1000a208
	li $a0, 83
	jal DRAW_LETTER
	
	li $a0, 67
	addi $a1, $a1, 16
	jal DRAW_LETTER
	
	li $a0, 79
	addi $a1, $a1, 16
	jal DRAW_LETTER
	
	li $a0, 82
	addi $a1, $a1, 16
	jal DRAW_LETTER
	
	li $a0, 69
	addi $a1, $a1, 16
	jal DRAW_LETTER
	
	j spawn_new

ERASE_CUR_SCORE:
	li $a2, 0x00000000
	li $a0, 48
	li $a1, 0x1000a808
	jal DRAW_LETTER
	
	li $a1, 0x1000a818
	jal DRAW_LETTER
	
	li $a1, 0x1000a828
	jal DRAW_LETTER

	li $a1, 0x1000a838
	jal DRAW_LETTER
	
	li $a1, 0x1000a848
	jal DRAW_LETTER
	
	li $a1, 0x1000a858
	jal DRAW_LETTER
	
	li $a1, 0x1000a868
	jal DRAW_LETTER
	
	li $a1, 0x1000a878
	jal DRAW_LETTER
	
	li $a1, 0x1000a888
	jal DRAW_LETTER

	li $a1, 0x1000a898
	jal DRAW_LETTER
	
ASCII_DIGIT:
	beq $t1, 0, ascii_0
	beq $t1, 1, ascii_1
	beq $t1, 2, ascii_2
	beq $t1, 3, ascii_3
	beq $t1, 4, ascii_4
	beq $t1, 5, ascii_5
	beq $t1, 6, ascii_6
	beq $t1, 7, ascii_7
	beq $t1, 8, ascii_8
	beq $t1, 9, ascii_9
ascii_0:
	li $a0, 48
	jr $ra
ascii_1:
	li $a0, 49
	jr $ra
ascii_2:
	li $a0, 50
	jr $ra
ascii_3:
	li $a0, 51
	jr $ra
ascii_4:
	li $a0, 52
	jr $ra
ascii_5:
	li $a0, 53
	jr $ra
ascii_6:
	li $a0, 54
	jr $ra
ascii_7:
	li $a0, 55
	jr $ra
ascii_8:
	li $a0, 56
	jr $ra
ascii_9:
	li $a0, 57
	jr $ra

display_cur_score:			# use $s6 value, not using $ra for simplicity
	# Erase previous numbers
	li $a2, 0x00000000
	li $a0, 91			# 91 = LETTER_BLOCK
	li $a1, 0x1000a808
	jal DRAW_LETTER
	
	li $a1, 0x1000a818
	jal DRAW_LETTER
	
	li $a1, 0x1000a828
	jal DRAW_LETTER

	li $a1, 0x1000a838
	jal DRAW_LETTER
	
	li $a1, 0x1000a848
	jal DRAW_LETTER
	
	li $a1, 0x1000a858
	jal DRAW_LETTER
	
	li $a1, 0x1000a868
	jal DRAW_LETTER
	
	li $a1, 0x1000a878
	jal DRAW_LETTER
	
	li $a1, 0x1000a888
	jal DRAW_LETTER

	li $a1, 0x1000a898
	jal DRAW_LETTER
	
	move $t0, $s6			# $t0 store raw value of $s6
	li $t1, 0			# $t1 store ith digit of $s6 from right, shift to the left
	li $t2, 10			# constant value
	mthi $zero
	mtlo $zero
	
	# i-th digits from the right
	li $a2, 0x00ffffff
	# 1st digit
	div $t0, $t2
	mflo $t0
	mfhi $t1
	jal ASCII_DIGIT
	li $a1, 0x1000a898
	jal DRAW_LETTER
	
	# 2nd digit
	div $t0, $t2
	mflo $t0
	mfhi $t1
	jal ASCII_DIGIT
	li $a1, 0x1000a888
	jal DRAW_LETTER
	
	# 3rd digit
	div $t0, $t2
	mflo $t0
	mfhi $t1
	jal ASCII_DIGIT
	li $a1, 0x1000a878
	jal DRAW_LETTER
	
	# 4th digit
	div $t0, $t2
	mflo $t0
	mfhi $t1
	jal ASCII_DIGIT
	li $a1, 0x1000a868
	jal DRAW_LETTER
	
	# 5th digit
	div $t0, $t2
	mflo $t0
	mfhi $t1
	jal ASCII_DIGIT
	li $a1, 0x1000a858
	jal DRAW_LETTER
	
	# 6th digit
	div $t0, $t2
	mflo $t0
	mfhi $t1
	jal ASCII_DIGIT
	li $a1, 0x1000a848
	jal DRAW_LETTER
	
	# 7th digit
	div $t0, $t2
	mflo $t0
	mfhi $t1
	jal ASCII_DIGIT
	li $a1, 0x1000a838
	jal DRAW_LETTER
	
	# 8th digit
	div $t0, $t2
	mflo $t0
	mfhi $t1
	jal ASCII_DIGIT
	li $a1, 0x1000a828
	jal DRAW_LETTER
	
	# 9th digit
	div $t0, $t2
	mflo $t0
	mfhi $t1
	jal ASCII_DIGIT
	li $a1, 0x1000a818
	jal DRAW_LETTER
	
	# 10th digit
	div $t0, $t2
	mflo $t0
	mfhi $t1
	jal ASCII_DIGIT
	li $a1, 0x1000a808
	jal DRAW_LETTER

	j random_tetro

display_high_score:
	
	move $t7, $a0
	# Erase previous numbers
	li $a2, 0x00000000
	li $a0, 91			# 91 = LETTER_BLOCK
	li $a1, 0x10009c08 
	jal DRAW_LETTER
	
	li $a1, 0x10009c18
	jal DRAW_LETTER
	
	li $a1, 0x10009c28
	jal DRAW_LETTER

	li $a1, 0x10009c38
	jal DRAW_LETTER
	
	li $a1, 0x10009c48
	jal DRAW_LETTER
	
	li $a1, 0x10009c58
	jal DRAW_LETTER
	
	li $a1, 0x10009c68
	jal DRAW_LETTER
	
	li $a1, 0x10009c78
	jal DRAW_LETTER
	
	li $a1, 0x10009c88
	jal DRAW_LETTER

	li $a1, 0x10009c98
	jal DRAW_LETTER
	
	move $t0, $s6			# $t0 store raw value of $s6
	li $t1, 0			# $t1 store ith digit of $s6 from right, shift to the left
	li $t2, 10			# constant value
	mthi $zero
	mtlo $zero
	
	# i-th digits from the right
	li $a2, 0x00ffffff
	# 1st digit
	div $t0, $t2
	mflo $t0
	mfhi $t1
	jal ASCII_DIGIT
	li $a1, 0x10009c98
	jal DRAW_LETTER
	
	# 2nd digit
	div $t0, $t2
	mflo $t0
	mfhi $t1
	jal ASCII_DIGIT
	li $a1, 0x10009c88
	jal DRAW_LETTER
	
	# 3rd digit
	div $t0, $t2
	mflo $t0
	mfhi $t1
	jal ASCII_DIGIT
	li $a1, 0x10009c78
	jal DRAW_LETTER
	
	# 4th digit
	div $t0, $t2
	mflo $t0
	mfhi $t1
	jal ASCII_DIGIT
	li $a1, 0x10009c68
	jal DRAW_LETTER
	
	# 5th digit
	div $t0, $t2
	mflo $t0
	mfhi $t1
	jal ASCII_DIGIT
	li $a1, 0x10009c58
	jal DRAW_LETTER
	
	# 6th digit
	div $t0, $t2
	mflo $t0
	mfhi $t1
	jal ASCII_DIGIT
	li $a1, 0x10009c48
	jal DRAW_LETTER
	
	# 7th digit
	div $t0, $t2
	mflo $t0
	mfhi $t1
	jal ASCII_DIGIT
	li $a1, 0x10009c38
	jal DRAW_LETTER
	
	# 8th digit
	div $t0, $t2
	mflo $t0
	mfhi $t1
	jal ASCII_DIGIT
	li $a1, 0x10009c28
	jal DRAW_LETTER
	
	# 9th digit
	div $t0, $t2
	mflo $t0
	mfhi $t1
	jal ASCII_DIGIT
	li $a1, 0x10009c18
	jal DRAW_LETTER
	
	# 10th digit
	div $t0, $t2
	mflo $t0
	mfhi $t1
	jal ASCII_DIGIT
	li $a1, 0x10009c08
	jal DRAW_LETTER
	beqz $t7, gameover_same_high_score
	j same_high_score
	

######################################## CLEAR FUNCTIONS ########################################

TRY_CLEAR:				# a0: coordinate of any pixel in the line
	blt $a0, 0x1000af04, NO_CLEAR	# outside playfield
	bgt $a0, 0x1000fb94, NO_CLEAR	# outside playfield
	andi $t0, $a0, 255		# t0 = a0 mod 256
	sub $t0, $a0, $t0		# t0 = a0 - (a0 mod 256)
	addiu $t0, $t0, 4		# move t0 to first pixel in playfield
	addiu $t2, $t0, 156		# last block in row
	
TRY_CLEAR_LOOP:				# while t0 filled
	lw $t1, ($t0)			# t1 = color of t0
	beq $t1, 0x00303030, NO_CLEAR
	beq $t1, 0x00404040, NO_CLEAR
	addi $t0, $t0, 16		# increment to next block
	ble $t0, $t2, TRY_CLEAR_LOOP
	
CLEAR_LINE:				# a0: coordinate of any pixel in the line
	blt $a0, 0x1000af04, NO_CLEAR	# outside playfield
	bgt $a0, 0x1000fb94, NO_CLEAR	# outside playfield
	addi $sp, $sp, -4		# store $ra
	sw $ra, ($sp)

CLEAR_LINE_2:
	andi $t0, $a0, 255		# t0 = a0 mod 256
	sub $t0, $a0, $t0		# t0 = a0 - (a0 mod 256)
	addiu $t0, $t0, 4		# move t0 to first block in row
	addiu $t2, $t0, 156		# last block in row
	beq $t0, 0x1000af04, CLEAR_TOP_LINE

CLEAR_LINE_LOOP:			# for each block in a row
	lw $a3, -1024($t0)		# block above t0; if not empty = border
	beq $a3, 0x00303030, CLEAR_LINE_DEL
	beq $a3, 0x00404040, CLEAR_LINE_DEL
	move $a0, $t0			# coordinate
	lw $a1, -760($t0)		# base
	lw $a2, -764($t0)		# highlight
	addi $sp, $sp, -4		# save current block and end point in stack		
	sw $t2, ($sp)
	jal DRAW_BLOCK			# copy the block above t0 to t0
	lw $t2, ($sp)			# restore t0, t2
	addi $sp, $sp, 4
	move $t0, $a0
	b CLEAR_LINE_INC
	
CLEAR_LINE_DEL:
	lw $t9, ($t0)
	beq $t9, 0x00303030, CLEAR_LINE_INC
	beq $t9, 0x00404040, CLEAR_LINE_INC
	move $a0, $t0			# argument for LIGHT_OR_DARK
	addi $sp, $sp, -8		# save current block and end point in stack
	sw $t0, 4($sp)
	sw $t2, ($sp)
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK			# delete block in t0
	lw $t2, ($sp)			# restore t0, t2
	lw $t0, 4($sp)
	addi $sp, $sp, 8
	
CLEAR_LINE_INC:
	addiu $t0, $t0, 16		# increment to next block
	ble $t0, $t2, CLEAR_LINE_LOOP
	addiu $a0, $t0, -1024
	b CLEAR_LINE_2
	
CLEAR_TOP_LINE:
	move $a0, $t0			# argument for LIGHT_OR_DARK
	addi $sp, $sp, -8		# save current block and end point in stack
	sw $t0, 4($sp)
	sw $t2, ($sp)
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK			# delete block in t0
	lw $t2, ($sp)			# restore t0, t2
	lw $t0, 4($sp)
	addi $sp, $sp, 8
	addiu $t0, $t0, 16		# increment to next block
	ble $t0, $t2, CLEAR_TOP_LINE
	
	lw $ra, ($sp)
	addi $sp, $sp, 4
	li $v0, 0
	jr $ra				# return
	
NO_CLEAR:
	li $v0, 1
	jr $ra
	
#################################################################################################
######################################## INPUT FUNCTIONS ########################################

INP_DECODE: 				# a0: ascii code, return in v0, return 0 if no collision; otherwise return 1
	beq $a0, 119, ROTATE		# w
	beq $a0, 115, GO_DOWN		# s
	beq $a0, 97, GO_LEFT		# a
	beq $a0, 100, GO_RIGHT		# d
	beq $a0, 117, GO_UP		# u
	beq $a0, 32, HARD_DROP		# space
	beq $a0, 113, QUIT		# q
#	beq $a0, 112, PAUSE		# p
	addi $sp, $sp, 4
	jr $ra

ROTATE:					# return in v0, return 0 if no collision; otherwise return 1
	addi $sp, $sp, -4
	sw $ra, ($sp)
	addiu $s3, $s3, 1
	andi $s3, $s3, 3		# s3 = (s3 + 1) mod 4
	jal CHECK_COLLISION		# plan
	beq $v0, 0, ROTATE_SAFE		# if CHECK_COLLISION returns 0, good, if 1, cancel the action
	addiu $s3, $s3, -1
	andi $s3, $s3, 3
ROTATE_SAFE:
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
	
GO_DOWN:				# return in v0, return 0 if no collision; otherwise return 1
	addi $sp, $sp, -4
	sw $ra, ($sp)
	addiu $s2, $s2, 1024
	jal CHECK_COLLISION		# plan
	beq $v0, 0, DOWN_SAFE		# if CHECK_COLLISION returns 0, good, if 1, cancel the action
	addiu $s2, $s2, -1024
DOWN_SAFE:
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
GO_LEFT:				# return in v0, return 0 if no collision; otherwise return 1
	addi $sp, $sp, -4
	sw $ra, ($sp)
	addiu $s2, $s2, -16
	jal CHECK_COLLISION		# plan
	beq $v0, 0, LEFT_SAFE		# if CHECK_COLLISION returns 0, good, if 1, cancel the action
	addiu $s2, $s2, 16
LEFT_SAFE:
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
GO_RIGHT:				# return in v0, return 0 if no collision; otherwise return 1
	addi $sp, $sp, -4
	sw $ra, ($sp)
	addiu $s2, $s2, 16
	jal CHECK_COLLISION		# plan
	beq $v0, 0, RIGHT_SAFE		# if CHECK_COLLISION returns 0, good, if 1, cancel the action
	addiu $s2, $s2, -16
RIGHT_SAFE:
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
GO_UP:					# return in v0, return 0 if no collision; otherwise return 1
	addi $sp, $sp, -4
	sw $ra, ($sp)
	addiu $s2, $s2, -1024
	jal CHECK_COLLISION		# plan
	beq $v0, 0, UP_SAFE		# if CHECK_COLLISION returns 0, good, if 1, cancel the action
	addiu $s2, $s2, 1024
UP_SAFE:
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
HARD_DROP:				# return in v0, return 0 if no collision; otherwise return 1
	li $v0, 0			# reset
HARD_DROP_LOOP:
	bne $v0, 0, HARD_DROP_END	# if collide, stop; otherwise, go down again
	jal GO_DOWN
	b HARD_DROP_LOOP		# repeat
HARD_DROP_END:
	move $a0, $s1
	move $a1, $s2
	move $a2, $s3
	jal DRAW_TETROMINO
	b spawn_new
QUIT:
	li $a0, 81
	li $a1, 0x10008f64
	li $a2, 0x00ff8000
	jal DRAW_LETTER
	li $a0, 85
	li $a1, 0x10008f7c
	jal DRAW_LETTER
	li $a0, 73
	li $a1, 0x10008f8c
	jal DRAW_LETTER
	li $a0, 84
	li $a1, 0x10008f9c
	jal DRAW_LETTER
	li $v0, 10
	syscall
	
#################################################################################################
######################################## COLLISION FUNCTIONS ########################################
	
BLOCKS_COLLISION:			# a0, a1, a2, a3: coordinates, return 0 if all good; otherwise return 1
	blt $a0, 0x1000a704, RETURN_COLLISION
	andi $t0, $a0, 255
	bgt $t0, 160, RETURN_COLLISION
	lw $t0, ($a0)
	beq $t0, 0x00000000, BLOCKS_COLLISION_3
	beq $t0, 0x00303030, BLOCKS_COLLISION_3
	beq $t0, 0x00404040, BLOCKS_COLLISION_3
	li $v0, 1
	jr $ra
BLOCKS_COLLISION_3:
	blt $a1, 0x1000a704, RETURN_COLLISION
	andi $t0, $a1, 255
	bgt $t0, 160, RETURN_COLLISION
	lw $t0, ($a1)
	beq $t0, 0x00000000, BLOCKS_COLLISION_2
	beq $t0, 0x00303030, BLOCKS_COLLISION_2
	beq $t0, 0x00404040, BLOCKS_COLLISION_2
	li $v0, 1
	jr $ra
BLOCKS_COLLISION_2:
	blt $a2, 0x1000a704, RETURN_COLLISION
	andi $t0, $a2, 255
	bgt $t0, 160, RETURN_COLLISION
	lw $t0, ($a2)
	beq $t0, 0x00000000, BLOCKS_COLLISION_1
	beq $t0, 0x00303030, BLOCKS_COLLISION_1
	beq $t0, 0x00404040, BLOCKS_COLLISION_1
	li $v0, 1
	jr $ra
BLOCKS_COLLISION_1:
	blt $a3, 0x1000a704, RETURN_COLLISION
	andi $t0, $a3, 255
	bgt $t0, 160, RETURN_COLLISION
	lw $t0, ($a3)
	beq $t0, 0x00000000, NO_COLLISION
	beq $t0, 0x00303030, NO_COLLISION
	beq $t0, 0x00404040, NO_COLLISION
	
RETURN_COLLISION:
	li $v0, 1
	jr $ra
NO_COLLISION:
	li $v0, 0
	jr $ra
	
CHECK_COLLISION:			# no param, return $v0 =>  0 = no collision, 1 = collision
	# calls corresponding handler for each tetromino, load addresses into a0-a4, then call BLOCKS_COLLISION
	addi $sp, $sp, -4
	sw $ra, ($sp)
	beq $s1, 0, COLLISION_I
	beq $s1, 1, COLLISION_O
	beq $s1, 2, COLLISION_T
	beq $s1, 3, COLLISION_S
	beq $s1, 4, COLLISION_Z
	beq $s1, 5, COLLISION_J
	beq $s1, 6, COLLISION_L
	addi $sp, $sp, 4
	jr $ra
	
COLLISION_I:
	beq $s3, 1, COLLISION_I_B
	beq $s3, 2, COLLISION_I_C
	beq $s3, 3, COLLISION_I_D
# COLLISION_I_A:
	move $a0, $s2
	addiu $a1, $s2, -16
	addiu $a2, $s2, 16
	addiu $a3, $s2, 32
	jal BLOCKS_COLLISION
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
COLLISION_I_B:
	addiu $a0, $s2, 16
	addiu $a1, $s2, -1008
	addiu $a2, $s2, 1040
	addiu $a3, $s2, 2064
	jal BLOCKS_COLLISION
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
COLLISION_I_C:
	addiu $a0, $s2, 1024
	addiu $a1, $s2, 1008
	addiu $a2, $s2, 1040
	addiu $a3, $s2, 1056
	jal BLOCKS_COLLISION
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
COLLISION_I_D:
	move $a0, $s2
	addiu $a1, $s2, -1024
	addiu $a2, $s2, 1024
	addiu $a3, $s2, 2048
	jal BLOCKS_COLLISION
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
	
COLLISION_O:
	move $a0, $s2
	addiu $a1, $s2, 16
	addiu $a2, $s2, -1024
	addiu $a3, $s2, -1008
	jal BLOCKS_COLLISION
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
	
COLLISION_T: 
	move $a0, $s2			# center
	
	beq $s3, 1, COLLISION_T_B
	beq $s3, 2, COLLISION_T_C
	beq $s3, 3, COLLISION_T_D
# COLLISION_T_A:
	addiu $a1, $s2, -1024
	addiu $a2, $s2, -16
	addiu $a3, $s2, 16
	jal BLOCKS_COLLISION
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
COLLISION_T_B:
	addiu $a1, $s2, -1024
	addiu $a2, $s2, 16
	addiu $a3, $s2, 1024
	jal BLOCKS_COLLISION
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
COLLISION_T_C:
	addiu $a1, $s2, -16
	addiu $a2, $s2, 16
	addiu $a3, $s2, 1024
	jal BLOCKS_COLLISION
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
COLLISION_T_D:
	addiu $a1, $s2, -1024
	addiu $a2, $s2, -16
	addiu $a3, $s2, 1024
	jal BLOCKS_COLLISION
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra

COLLISION_S: 
	move $a0, $s2			# center
	
	beq $s3, 1, COLLISION_S_B
	beq $s3, 2, COLLISION_S_C
	beq $s3, 3, COLLISION_S_D
# COLLISION_S_A:
	addiu $a1, $s2, -1024
	addiu $a2, $s2, -1008
	addiu $a3, $s2, -16
	jal BLOCKS_COLLISION
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
COLLISION_S_B:
	addiu $a1, $s2, -1024
	addiu $a2, $s2, 16
	addiu $a3, $s2, 1040
	jal BLOCKS_COLLISION
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
COLLISION_S_C:
	addiu $a1, $s2, 16
	addiu $a2, $s2, 1008
	addiu $a3, $s2, 1024
	jal BLOCKS_COLLISION
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
COLLISION_S_D:
	addiu $a1, $s2, -1040
	addiu $a2, $s2, -16
	addiu $a3, $s2, 1024
	jal BLOCKS_COLLISION
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
	
COLLISION_Z: 
	move $a0, $s2			# center
	
	beq $s3, 1, COLLISION_Z_B
	beq $s3, 2, COLLISION_Z_C
	beq $s3, 3, COLLISION_Z_D
# COLLISION_Z_A:
	addiu $a1, $s2, -1040
	addiu $a2, $s2, -1024
	addiu $a3, $s2, 16
	jal BLOCKS_COLLISION
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
COLLISION_Z_B:
	addiu $a1, $s2, -1008
	addiu $a2, $s2, 16
	addiu $a3, $s2, 1024
	jal BLOCKS_COLLISION
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
COLLISION_Z_C:
	addiu $a1, $s2, -16
	addiu $a2, $s2, 1024
	addiu $a3, $s2, 1040
	jal BLOCKS_COLLISION
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
COLLISION_Z_D:
	addiu $a1, $s2, -1024
	addiu $a2, $s2, -16
	addiu $a3, $s2, 1008
	jal BLOCKS_COLLISION
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra	

COLLISION_J: 
	move $a0, $s2			# center
	
	beq $s3, 1, COLLISION_J_B
	beq $s3, 2, COLLISION_J_C
	beq $s3, 3, COLLISION_J_D
# COLLISION_J_A:
	addiu $a1, $s2, -1040
	addiu $a2, $s2, -16
	addiu $a3, $s2, 16
	jal BLOCKS_COLLISION
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
COLLISION_J_B:
	addiu $a1, $s2, -1024
	addiu $a2, $s2, -1008
	addiu $a3, $s2, 1024
	jal BLOCKS_COLLISION
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
COLLISION_J_C:
	addiu $a1, $s2, -16
	addiu $a2, $s2, 16
	addiu $a3, $s2, 1040
	jal BLOCKS_COLLISION
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
COLLISION_J_D:
	addiu $a1, $s2, -1024
	addiu $a2, $s2, 1024
	addiu $a3, $s2, 1008
	jal BLOCKS_COLLISION
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra

COLLISION_L: 
	move $a0, $s2			# center
	
	beq $s3, 1, COLLISION_L_B
	beq $s3, 2, COLLISION_L_C
	beq $s3, 3, COLLISION_L_D
# COLLISION_L_A:
	addiu $a1, $s2, -1008
	addiu $a2, $s2, -16
	addiu $a3, $s2, 16
	jal BLOCKS_COLLISION
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
COLLISION_L_B:
	addiu $a1, $s2, -1024
	addiu $a2, $s2, 1024
	addiu $a3, $s2, 1040
	jal BLOCKS_COLLISION
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
COLLISION_L_C:
	addiu $a1, $s2, -16
	addiu $a2, $s2, 16
	addiu $a3, $s2, 1008
	jal BLOCKS_COLLISION
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
COLLISION_L_D:
	addiu $a1, $s2, -1040
	addiu $a2, $s2, -1024
	addiu $a3, $s2, 1024
	jal BLOCKS_COLLISION
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra	

#####################################################################################################
######################################## BLOCKS AND TETROMINOES DRAWING FUNCTIONS ########################################

LIGHT_OR_DARK:			# a0: top left coordinate of block
	blt $a0, 0x1000af04, SET_BLACK
	andi $t3, $a0, 255	# t3 = a0 mod 256
	bgt $t3, 160, SET_BLACK
	andi $t2, $a0, 31	# t2 = a0 mod 32
	sub $t3, $a0, $t3	# t3 = a0 - t3
	andi $t3, $t3, 2047	# t3 = t3 mod 2048
	add $t2, $t2, $t3	# t2 = t2 + t3
	
	beq $t2, 1812, SET_DARK
	beq $t2, 772, SET_DARK
# SET_LIGHT:
	li $a1, 0x00404040	# base
	li $a2, 0x00404040	# highlight
	li $a3, 0x00404040	# border
	jr $ra
SET_DARK:	
	li $a1, 0x00303030	# base
	li $a2, 0x00303030	# highlight
	li $a3, 0x00303030	# border
	jr $ra
SET_BLACK:
	li $a1, 0x00000000	# base
	li $a2, 0x00000000	# highlight
	li $a3, 0x00000000	# border
	jr $ra
	
ERASE_TETROMINO:
	# a0: type. a1: top left of a fixed block (ideally rotation center), a2: rotation state
	#return void ??
	addi $sp, $sp, -4
	sw $ra, ($sp)
	beq $a0, 0, ERASE_I # 0 = I
	beq $a0, 1, ERASE_O # 1 = O
	beq $a0, 2, ERASE_T # 2 = T
	beq $a0, 3, ERASE_S # 3 = S
	beq $a0, 4, ERASE_Z # 4 = Z
	beq $a0, 5, ERASE_J # 5 = J
	beq $a0, 6, ERASE_L # 6 = L
	addi $sp, $sp, 4
	jr $ra
ERASE_I:
	move $t0, $a1		# t0 stores top left of rotation center
	move $t1, $a2		# t1 stores rotation state
	beq $t1, 1, ERASE_I_B
	beq $t1, 2, ERASE_I_C
	beq $t1, 3, ERASE_I_D
# ERASE_I_A:
	move $a0, $t0
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	addiu $a0, $a0, -16
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	addiu $a0, $a0, 32
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	addiu $a0, $a0, 16
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
ERASE_I_B:
	addiu $a0, $t0, 16
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	addiu $a0, $a0, -1024
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	addiu $a0, $a0, 2048
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	addiu $a0, $a0, 1024
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
ERASE_I_C:
	addiu $a0, $t0, 1024
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	addiu $a0, $a0, -16
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	addiu $a0, $a0, 32
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	addiu $a0, $a0, 16
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
ERASE_I_D:
	move $a0, $t0
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	addiu $a0, $a0, -1024
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	addiu $a0, $a0, 2048
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	addiu $a0, $a0, 1024
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
	
ERASE_O: 
	move $a0, $a1		# a0 stores top left of rotation center
	move $t9, $a2		#t9 stores rotation state
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK		# bottom left
	addiu $a0, $a0, 16	
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK		# bottom right
	addiu $a0, $a0, -1024	
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK		# top right
	addiu $a0, $a0, -16	# top left
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra	
	
ERASE_T: 
	move $t0, $a1		# t0 = a0
	move $t9, $a2		# t9 stores rotation state
	
	move $a0, $t0
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	
	beq $t1, 0, ERASE_T_A
	addiu $a0, $t0, 1024
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
ERASE_T_A:
	beq $t1, 1, ERASE_T_B
	addiu $a0, $t0, -16
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
ERASE_T_B:
	beq $t1, 2, ERASE_T_C
	addiu $a0, $t0, -1024
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
ERASE_T_C:
	beq $t1, 3, ERASE_T_D
	addiu $a0, $t0, 16
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
ERASE_T_D:
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
	
ERASE_S: 
	move $a0, $a1		# a0 stores top left of rotation center
	move $t9, $a2		# t9 stores rotation state
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	beq $t9, 1, ERASE_S_B
	beq $t9, 2, ERASE_S_C
	beq $t9, 3, ERASE_S_D
# ERASE_S_A
	addiu $a0, $a0, -16
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	addiu $a0, $a0, -1008
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	addiu $a0, $a0, 16
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
ERASE_S_B:
	addiu $a0, $a0, -1024
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	addiu $a0, $a0, 1040
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	addiu $a0, $a0, 1024
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
ERASE_S_C:
	addiu $a0, $a0, 16
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	addiu $a0, $a0, 1008
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	addiu $a0, $a0, -16
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
ERASE_S_D:
	addiu $a0, $a0, 1024
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	addiu $a0, $a0, -1040
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	addiu $a0, $a0, -1024
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
	
ERASE_Z: 
	move $a0, $a1		# a0 stores top left of rotation center
	move $t9, $a2		# t9 stores rotation state
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	beq $t9, 1, ERASE_Z_B
	beq $t9, 2, ERASE_Z_C
	beq $t9, 3, ERASE_Z_D
# ERASE_Z_A
	addiu $a0, $a0, 16
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	addiu $a0, $a0, -1040
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	addiu $a0, $a0, -16
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
ERASE_Z_B:
	addiu $a0, $a0, 1024
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	addiu $a0, $a0, -1008
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	addiu $a0, $a0, -1024
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
ERASE_Z_C:
	addiu $a0, $a0, -16
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	addiu $a0, $a0, 1040
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	addiu $a0, $a0, 16
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
ERASE_Z_D:
	addiu $a0, $a0, 1008
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	addiu $a0, $a0, -1024
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	addiu $a0, $a0, -1008
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra

ERASE_J: 
	move $a0, $a1		# a0 stores top left of rotation center
	move $t9, $a2		# t9 stores rotation state
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	beq $t9, 1, ERASE_J_B
	beq $t9, 2, ERASE_J_C
	beq $t9, 3, ERASE_J_D
# ERASE_J_A
	addiu $a0, $a0, 16
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	addiu $a0, $a0, -32
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	addiu $a0, $a0, -1024
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
ERASE_J_B:
	addiu $a0, $a0, 1024
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	addiu $a0, $a0, -2048
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	addiu $a0, $a0, 16
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
ERASE_J_C:
	addiu $a0, $a0, -16
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	addiu $a0, $a0, 32
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	addiu $a0, $a0, 1024
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
ERASE_J_D:
	addiu $a0, $a0, 1008
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	addiu $a0, $a0, 16
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	addiu $a0, $a0, -2048
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra

ERASE_L: 
	move $a0, $a1		# a0 stores top left of rotation center
	move $t9, $a2		# t9 stores rotation state
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	beq $t9, 1, ERASE_L_B
	beq $t9, 2, ERASE_L_C
	beq $t9, 3, ERASE_L_D
# ERASE_L_A
	addiu $a0, $a0, -16
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	addiu $a0, $a0, 32
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	addiu $a0, $a0, -1024
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
ERASE_L_B:
	addiu $a0, $a0, 1040
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	addiu $a0, $a0, -16
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	addiu $a0, $a0, -2048
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
ERASE_L_C:
	addiu $a0, $a0, 1008
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	addiu $a0, $a0, -1024
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	addiu $a0, $a0, 32
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
ERASE_L_D:
	addiu $a0, $a0, 1024
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	addiu $a0, $a0, -2048
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	addiu $a0, $a0, -16
	jal LIGHT_OR_DARK
	jal DRAW_BLOCK
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra

DRAW_BLOCK: # a0: top left pixel, a1: base, a2: highlight, a3: border, return void
	blt $a0, 0x1000af04, NO_DRAW
	# if above visible playfield, don't draw, return v1 = (v1 AND 1)
	# didn't exclude right side of playfield to use for next piece (planned feature)
	sw $a3, ($a0)
	sw $a3, 4($a0)
	sw $a3, 8($a0)
	sw $a3, 12($a0)
	sw $a3, 256($a0)
	sw $a2, 260($a0)
	sw $a1, 264($a0)
	sw $a3, 268($a0)
	sw $a3, 512($a0)
	sw $a1, 516($a0)
	sw $a1, 520($a0)
	sw $a3, 524($a0)
	sw $a3, 768($a0)
	sw $a3, 772($a0)
	sw $a3, 776($a0)
	sw $a3, 780($a0)
	jr $ra
NO_DRAW:
	li $v1, 1
	jr $ra
	
DRAW_TETROMINO:
	# a0: type. a1: top left of a fixed block (ideally rotation center), a2: rotation state
	#return void ??
	addi $sp, $sp, -4
	sw $ra, ($sp)
	li $v1, 0		# reset v1 for DRAW_BLOCK calls
	beq $a0, 0, DRAW_I 	# 0 = I
	beq $a0, 1, DRAW_O 	# 1 = O
	beq $a0, 2, DRAW_T 	# 2 = T
	beq $a0, 3, DRAW_S 	# 3 = S
	beq $a0, 4, DRAW_Z 	# 4 = Z
	beq $a0, 5, DRAW_J 	# 5 = J
	beq $a0, 6, DRAW_L 	# 6 = L
	addi $sp, $sp, 4
	jr $ra
DRAW_I:
	move $t0, $a1		# t0 stores top left of rotation center
	move $t1, $a2		# t1 stores rotation state
	li $a1, 0x0000ffff	# base
	li $a2, 0x009bffff	# highlight
	li $a3, 0x0000e0e0	# border
	beq $t1, 1, DRAW_I_B
	beq $t1, 2, DRAW_I_C
	beq $t1, 3, DRAW_I_D
# DRAW_I_A:
	move $a0, $t0
	jal DRAW_BLOCK
	addiu $a0, $a0, -16
	jal DRAW_BLOCK
	addiu $a0, $a0, 32
	jal DRAW_BLOCK
	addiu $a0, $a0, 16
	jal DRAW_BLOCK
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
DRAW_I_B:
	addiu $a0, $t0, 16
	jal DRAW_BLOCK
	addiu $a0, $a0, -1024
	jal DRAW_BLOCK
	addiu $a0, $a0, 2048
	jal DRAW_BLOCK
	addiu $a0, $a0, 1024
	jal DRAW_BLOCK
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
DRAW_I_C:
	addiu $a0, $t0, 1024
	jal DRAW_BLOCK
	addiu $a0, $a0, -16
	jal DRAW_BLOCK
	addiu $a0, $a0, 32
	jal DRAW_BLOCK
	addiu $a0, $a0, 16
	jal DRAW_BLOCK
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
DRAW_I_D:
	move $a0, $t0
	jal DRAW_BLOCK
	addiu $a0, $a0, -1024
	jal DRAW_BLOCK
	addiu $a0, $a0, 2048
	jal DRAW_BLOCK
	addiu $a0, $a0, 1024
	jal DRAW_BLOCK
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
	
DRAW_O: 
	move $a0, $a1
	li $a1, 0x00ffff00	# base
	li $a2, 0x00ffff9b	# highlight
	li $a3, 0x00e0e000	# border
	jal DRAW_BLOCK		# bottom left
	addiu $a0, $a0, 16	
	jal DRAW_BLOCK		# bottom right
	addiu $a0, $a0, -1024	
	jal DRAW_BLOCK		# top right
	addiu $a0, $a0, -16	# top left
	jal DRAW_BLOCK
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
	
DRAW_T:	
	move $t0, $a1		# t0 stores top left of rotation center
	move $t1, $a2		# t1 stores rotation state
	li $a1, 0x008000ff	# base
	li $a2, 0x009e3eff	# highlight
	li $a3, 0x007100e0	# border
	move $a0, $t0
	jal DRAW_BLOCK

	beq $t1, 0, DRAW_T_A
	addiu $a0, $t0, 1024
	jal DRAW_BLOCK
DRAW_T_A:
	beq $t1, 1, DRAW_T_B
	addiu $a0, $t0, -16
	jal DRAW_BLOCK
DRAW_T_B:
	beq $t1, 2, DRAW_T_C
	addiu $a0, $t0, -1024
	jal DRAW_BLOCK
DRAW_T_C:
	beq $t1, 3, DRAW_T_D
	addiu $a0, $t0, 16
	jal DRAW_BLOCK
DRAW_T_D:
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
	
DRAW_S: 
	move $t0, $a1		# t0 stores top left of rotation center
	move $t1, $a2		# t1 stores rotation state
	li $a1, 0x0000ff00	# base
	li $a2, 0x007cff7c	# highlight
	li $a3, 0x0000e000	# border
	move $a0, $t0
	jal DRAW_BLOCK
	beq $t1, 1, DRAW_S_B
	beq $t1, 2, DRAW_S_C
	beq $t1, 3, DRAW_S_D
# DRAW_S_A
	addiu $a0, $a0, -16
	jal DRAW_BLOCK
	addiu $a0, $a0, -1008
	jal DRAW_BLOCK
	addiu $a0, $a0, 16
	jal DRAW_BLOCK
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
DRAW_S_B:
	addiu $a0, $a0, -1024
	jal DRAW_BLOCK
	addiu $a0, $a0, 1040
	jal DRAW_BLOCK
	addiu $a0, $a0, 1024
	jal DRAW_BLOCK
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
DRAW_S_C:
	addiu $a0, $a0, 16
	jal DRAW_BLOCK
	addiu $a0, $a0, 1008
	jal DRAW_BLOCK
	addiu $a0, $a0, -16
	jal DRAW_BLOCK
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
DRAW_S_D:
	addiu $a0, $a0, 1024
	jal DRAW_BLOCK
	addiu $a0, $a0, -1040
	jal DRAW_BLOCK
	addiu $a0, $a0, -1024
	jal DRAW_BLOCK
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
	
DRAW_Z:	# TODO
	move $t0, $a1		# t0 stores top left of rotation center
	move $t1, $a2		# t1 stores rotation state
	li $a1, 0x00ff0000	# base
	li $a2, 0x00ff3e3e	# highlight
	li $a3, 0x00e00000	# border
	move $a0, $t0
	jal DRAW_BLOCK
	beq $t1, 1, DRAW_Z_B
	beq $t1, 2, DRAW_Z_C
	beq $t1, 3, DRAW_Z_D
# DRAW_Z_A
	addiu $a0, $a0, 16
	jal DRAW_BLOCK
	addiu $a0, $a0, -1040
	jal DRAW_BLOCK
	addiu $a0, $a0, -16
	jal DRAW_BLOCK
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
DRAW_Z_B:
	addiu $a0, $a0, 1024
	jal DRAW_BLOCK
	addiu $a0, $a0, -1008
	jal DRAW_BLOCK
	addiu $a0, $a0, -1024
	jal DRAW_BLOCK
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
DRAW_Z_C:
	addiu $a0, $a0, -16
	jal DRAW_BLOCK
	addiu $a0, $a0, 1040
	jal DRAW_BLOCK
	addiu $a0, $a0, 16
	jal DRAW_BLOCK
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
DRAW_Z_D:
	addiu $a0, $a0, -1024
	jal DRAW_BLOCK
	addiu $a0, $a0, 1008
	jal DRAW_BLOCK
	addiu $a0, $a0, 1024
	jal DRAW_BLOCK
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
	
	
DRAW_J: # TODO
	move $t0, $a1		# t0 stores top left of rotation center
	move $t1, $a2		# t1 stores rotation state
	li $a1, 0x000000ff	# base
	li $a2, 0x003e3eff	# highlight
	li $a3, 0x000000e0	# border
	move $a0, $t0
	jal DRAW_BLOCK
	beq $t1, 1, DRAW_J_B
	beq $t1, 2, DRAW_J_C
	beq $t1, 3, DRAW_J_D
# DRAW_J_A
	addiu $a0, $a0, 16
	jal DRAW_BLOCK
	addiu $a0, $a0, -32
	jal DRAW_BLOCK
	addiu $a0, $a0, -1024
	jal DRAW_BLOCK
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
DRAW_J_B:
	addiu $a0, $a0, 1024
	jal DRAW_BLOCK
	addiu $a0, $a0, -2048
	jal DRAW_BLOCK
	addiu $a0, $a0, 16
	jal DRAW_BLOCK
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
DRAW_J_C:
	addiu $a0, $a0, 1040
	jal DRAW_BLOCK
	addiu $a0, $a0, -1024
	jal DRAW_BLOCK
	addiu $a0, $a0, -32
	jal DRAW_BLOCK
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
DRAW_J_D:
	addiu $a0, $a0, -1024
	jal DRAW_BLOCK
	addiu $a0, $a0, 2048
	jal DRAW_BLOCK
	addiu $a0, $a0, -16
	jal DRAW_BLOCK
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
	
DRAW_L:	# TODO
	move $t0, $a1		# t0 stores top left of rotation center
	move $t1, $a2		# t1 stores rotation state
	li $a1, 0x00ff8000	# base
	li $a2, 0x00ff9e3e	# highlight
	li $a3, 0x00e07100	# border
	move $a0, $t0
	jal DRAW_BLOCK
	beq $t1, 1, DRAW_L_B
	beq $t1, 2, DRAW_L_C
	beq $t1, 3, DRAW_L_D
# DRAW_L_A
	addiu $a0, $a0, -1008
	jal DRAW_BLOCK
	addiu $a0, $a0, 1024
	jal DRAW_BLOCK
	addiu $a0, $a0, -32
	jal DRAW_BLOCK
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
DRAW_L_B:
	addiu $a0, $a0, 1040
	jal DRAW_BLOCK
	addiu $a0, $a0, -16
	jal DRAW_BLOCK
	addiu $a0, $a0, -2048
	jal DRAW_BLOCK
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
DRAW_L_C:
	addiu $a0, $a0, 16
	jal DRAW_BLOCK
	addiu $a0, $a0, -32
	jal DRAW_BLOCK
	addiu $a0, $a0, 1024
	jal DRAW_BLOCK
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
DRAW_L_D:
	addiu $a0, $a0, 1024
	jal DRAW_BLOCK
	addiu $a0, $a0, -2048
	jal DRAW_BLOCK
	addiu $a0, $a0, -16
	jal DRAW_BLOCK
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
	
##########################################################################################################################
######################################## DECORATIVE DRAWING FUNCTIONS ########################################

DRAW_GRID:
	# t0: base, t1: top left of grid, t7: end, $t6: end of row
	# t8: dark grey, $t9: lighter gray
	li $t0, 0x10008000
	addiu $t1, $t0, 12036	# 12036 = 11776 + bytes in 1 row (256) + 4 ( 1 unit )
	addiu $t7, $t0, 32516
	addiu $t6, $t1, 160 	# 1 row in grid = 10 blocks = 10 x 4 unit x 4 bytes
	li $t8, 0x00303030 	# 0x00303030 = grid dark color
	li $t9, 0x00404040 	# 0x00404040 = grid grey color
	
DRAW_GRID_LOOP:
	beq $t1, $t7, END_DRAW_GRID

GRID_ROW:
	beq $t1, $t6, END_ROW
	andi $t2, $t1, 31
	andi $t3, $t1, 255
	sub $t3, $t1, $t3
	andi $t3, $t3, 2047
	add $t2, $t2, $t3
	
	# alternating colors based on parity
	beq $t2, 1812, FILL_DARK
	beq $t2, 772, FILL_DARK
	# fill with lighter grey
	sw $t9, ($t1)
	sw $t9, 4($t1)
	sw $t9, 8($t1)
	sw $t9, 12($t1)
	sw $t9, 256($t1)
	sw $t9, 260($t1)
	sw $t9, 264($t1)
	sw $t9, 268($t1)
	sw $t9, 512($t1)
	sw $t9, 516($t1)
	sw $t9, 520($t1)
	sw $t9, 524($t1)
	sw $t9, 768($t1)
	sw $t9, 772($t1)
	sw $t9, 776($t1)
	sw $t9, 780($t1)
	j END_FILL_IF
FILL_DARK:
	# fill with darker grey
	sw $t8, ($t1)
	sw $t8, 4($t1)
	sw $t8, 8($t1)
	sw $t8, 12($t1)
	sw $t8, 256($t1)
	sw $t8, 260($t1)
	sw $t8, 264($t1)
	sw $t8, 268($t1)
	sw $t8, 512($t1)
	sw $t8, 516($t1)
	sw $t8, 520($t1)
	sw $t8, 524($t1)
	sw $t8, 768($t1)
	sw $t8, 772($t1)
	sw $t8, 776($t1)
	sw $t8, 780($t1)
	
END_FILL_IF:
	addiu $t1, $t1, 16
	j GRID_ROW

END_ROW:
	addiu $t1, $t1, 864
	addiu $t6, $t1, 160
	j DRAW_GRID_LOOP
	
END_DRAW_GRID:
	jr $ra

##############################################################################################################
######################################## LETTER DRAWING FUNCTIONS ########################################
DRAW_LETTER :
	# a0 is the letter
	# a1 is the coordinate of the top left of the letter
	# a2 is the color of the letter
	#	X O O
	#	O   O
	#	O   O			Example : X marks the coordinate of O.
	#	O   O				  
	#	O O O
	beq $a0, 48, LETTER_0
	beq $a0, 49, LETTER_1
	beq $a0, 50, LETTER_2
	beq $a0, 51, LETTER_3
	beq $a0, 52, LETTER_4
	beq $a0, 53, LETTER_5
	beq $a0, 54, LETTER_6
	beq $a0, 55, LETTER_7
	beq $a0, 56, LETTER_8
	beq $a0, 57, LETTER_9
	beq $a0, 65, LETTER_A
	beq $a0, 66, LETTER_B
	beq $a0, 67, LETTER_C
	beq $a0, 68, LETTER_D
	beq $a0, 69, LETTER_E
	beq $a0, 70, LETTER_F
	beq $a0, 71, LETTER_G # 4x5
	beq $a0, 72, LETTER_H
	beq $a0, 73, LETTER_I
	beq $a0, 74, LETTER_J
	beq $a0, 75, LETTER_K
	beq $a0, 76, LETTER_L
	beq $a0, 77, LETTER_M # 5x5
	beq $a0, 78, LETTER_N # 4x5
	beq $a0, 79, LETTER_O
	beq $a0, 80, LETTER_P
	beq $a0, 81, LETTER_Q # 5x5
	beq $a0, 82, LETTER_R
	beq $a0, 83, LETTER_S
	beq $a0, 84, LETTER_T
	beq $a0, 85, LETTER_U
	beq $a0, 86, LETTER_V # 5x5
	beq $a0, 87, LETTER_W # 5x5
	beq $a0, 88, LETTER_X
	beq $a0, 89, LETTER_Y 
	beq $a0, 90, LETTER_Z
	beq $a0, 91, LETTER_BLOCK
	jr $ra

LETTER_BLOCK:
	sw $a2, ($a1)
	sw $a2, 4($a1)
	sw $a2, 8($a1)
	sw $a2, 256($a1)
	sw $a2, 260($a1)
	sw $a2, 264($a1)
	sw $a2, 512($a1)
	sw $a2, 516($a1)
	sw $a2, 520($a1)
	sw $a2, 768($a1)
	sw $a2, 772($a1)
	sw $a2, 776($a1)
	sw $a2, 1024($a1)
	sw $a2, 1028($a1)
	sw $a2, 1032($a1)
	jr $ra
LETTER_0:
	sw $a2, ($a1)
	sw $a2, 4($a1)
	sw $a2, 8($a1)
	sw $a2, 256($a1)
	sw $a2, 264($a1)
	sw $a2, 512($a1)
	sw $a2, 520($a1)
	sw $a2, 768($a1)
	sw $a2, 776($a1)
	sw $a2, 1024($a1)
	sw $a2, 1028($a1)
	sw $a2, 1032($a1)
	jr $ra
LETTER_1:
	sw $a2, ($a1)
	sw $a2, 4($a1)
	sw $a2, 260($a1)
	sw $a2, 516($a1)
	sw $a2, 772($a1)
	sw $a2, 1024($a1)
	sw $a2, 1028($a1)
	sw $a2, 1032($a1)
	jr $ra
LETTER_2:
	sw $a2, ($a1)
	sw $a2, 4($a1)
	sw $a2, 8($a1)
	sw $a2, 264($a1)
	sw $a2, 520($a1)
	sw $a2, 516($a1)
	sw $a2, 512($a1)
	sw $a2, 768($a1)
	sw $a2, 1024($a1)
	sw $a2, 1028($a1)
	sw $a2, 1032($a1)
	jr $ra
LETTER_3:
	sw $a2, ($a1)
	sw $a2, 4($a1)
	sw $a2, 8($a1)
	sw $a2, 264($a1)
	sw $a2, 512($a1)
	sw $a2, 516($a1)
	sw $a2, 520($a1)
	sw $a2, 776($a1)
	sw $a2, 1024($a1)
	sw $a2, 1028($a1)
	sw $a2, 1032($a1)
	jr $ra
LETTER_4:
	sw $a2, ($a1)
	sw $a2, 8($a1)
	sw $a2, 256($a1)
	sw $a2, 264($a1)
	sw $a2, 512($a1)
	sw $a2, 516($a1)
	sw $a2, 520($a1)
	sw $a2, 776($a1)
	sw $a2, 1032($a1)
	jr $ra
LETTER_5:
	sw $a2, ($a1)
	sw $a2, 4($a1)
	sw $a2, 8($a1)
	sw $a2, 256($a1)
	sw $a2, 512($a1)
	sw $a2, 516($a1)
	sw $a2, 520($a1)
	sw $a2, 776($a1)
	sw $a2, 1024($a1)
	sw $a2, 1028($a1)
	sw $a2, 1032($a1)
	jr $ra
LETTER_6:
	sw $a2, ($a1)
	sw $a2, 4($a1)
	sw $a2, 8($a1)
	sw $a2, 256($a1)
	sw $a2, 512($a1)
	sw $a2, 516($a1)
	sw $a2, 520($a1)
	sw $a2, 768($a1)
	sw $a2, 776($a1)
	sw $a2, 1024($a1)
	sw $a2, 1028($a1)
	sw $a2, 1032($a1)
	jr $ra
LETTER_7:
	sw $a2, ($a1)
	sw $a2, 4($a1)
	sw $a2, 8($a1)
	sw $a2, 264($a1)
	sw $a2, 520($a1)
	sw $a2, 776($a1)
	sw $a2, 1032($a1)
	jr $ra
LETTER_8:
	sw $a2, ($a1)
	sw $a2, 4($a1)
	sw $a2, 8($a1)
	sw $a2, 256($a1)
	sw $a2, 264($a1)
	sw $a2, 512($a1)
	sw $a2, 516($a1)
	sw $a2, 520($a1)
	sw $a2, 768($a1)
	sw $a2, 776($a1)
	sw $a2, 1024($a1)
	sw $a2, 1028($a1)
	sw $a2, 1032($a1)
	jr $ra
LETTER_9:
	sw $a2, ($a1)
	sw $a2, 4($a1)
	sw $a2, 8($a1)
	sw $a2, 256($a1)
	sw $a2, 264($a1)
	sw $a2, 512($a1)
	sw $a2, 516($a1)
	sw $a2, 520($a1)
	sw $a2, 776($a1)
	sw $a2, 1024($a1)
	sw $a2, 1028($a1)
	sw $a2, 1032($a1)
	jr $ra
LETTER_A:
	sw $a2, 4($a1)
	sw $a2, 256($a1)
	sw $a2, 264($a1)
	sw $a2, 512($a1)
	sw $a2, 520($a1)
	sw $a2, 768($a1)
	sw $a2, 772($a1)
	sw $a2, 776($a1)
	sw $a2, 1024($a1)
	sw $a2, 1032($a1)
	jr $ra
LETTER_B:
	sw $a2, ($a1)
	sw $a2, 4($a1)
	sw $a2, 256($a1)
	sw $a2, 264($a1)
	sw $a2, 512($a1)
	sw $a2, 516($a1)
	sw $a2, 768($a1)
	sw $a2, 776($a1)
	sw $a2, 1024($a1)
	sw $a2, 1028($a1)
	jr $ra
LETTER_C:
	sw $a2, 4($a1)
	sw $a2, 8($a1)
	sw $a2, 256($a1)
	sw $a2, 512($a1)
	sw $a2, 768($a1)
	sw $a2, 1028($a1)
	sw $a2, 1032($a1)
	jr $ra
LETTER_D:
	sw $a2, ($a1)
	sw $a2, 4($a1)
	sw $a2, 256($a1)
	sw $a2, 264($a1)
	sw $a2, 512($a1)
	sw $a2, 520($a1)
	sw $a2, 768($a1)
	sw $a2, 776($a1)
	sw $a2, 1024($a1)
	sw $a2, 1028($a1)
	jr $ra
LETTER_E:
	sw $a2, ($a1)
	sw $a2, 4($a1)
	sw $a2, 8($a1)
	sw $a2, 256($a1)
	sw $a2, 512($a1)
	sw $a2, 516($a1)
	sw $a2, 520($a1)
	sw $a2, 768($a1)
	sw $a2, 1024($a1)
	sw $a2, 1028($a1)
	sw $a2, 1032($a1)
	jr $ra
LETTER_F:
	sw $a2, ($a1)
	sw $a2, 4($a1)
	sw $a2, 8($a1)
	sw $a2, 256($a1)
	sw $a2, 512($a1)
	sw $a2, 516($a1)
	sw $a2, 520($a1)
	sw $a2, 768($a1)
	sw $a2, 1024($a1)
	jr $ra
LETTER_G:
	sw $a2, 4($a1)
	sw $a2, 8($a1)
	sw $a2, 256($a1)
	sw $a2, 512($a1)
	sw $a2, 520($a1)
	sw $a2, 524($a1)
	sw $a2, 768($a1)
	sw $a2, 780($a1)
	sw $a2, 1028($a1)
	sw $a2, 1032($a1)
	jr $ra
LETTER_H:
	sw $a2, ($a1)
	sw $a2, 8($a1)
	sw $a2, 256($a1)
	sw $a2, 264($a1)
	sw $a2, 512($a1)
	sw $a2, 516($a1)
	sw $a2, 520($a1)
	sw $a2, 768($a1)
	sw $a2, 776($a1)
	sw $a2, 1024($a1)
	sw $a2, 1032($a1)
	jr $ra
LETTER_I:
	sw $a2, ($a1)
	sw $a2, 4($a1)
	sw $a2, 8($a1)
	sw $a2, 260($a1)
	sw $a2, 516($a1)
	sw $a2, 772($a1)
	sw $a2, 1024($a1)
	sw $a2, 1028($a1)
	sw $a2, 1032($a1)
	jr $ra
LETTER_J:
	sw $a2, ($a1)
	sw $a2, 4($a1)
	sw $a2, 8($a1)
	sw $a2, 264($a1)
	sw $a2, 520($a1)
	sw $a2, 768($a1)
	sw $a2, 776($a1)
	sw $a2, 1024($a1)
	sw $a2, 1028($a1)
	jr $ra
LETTER_K:
	sw $a2, ($a1)
	sw $a2, 8($a1)
	sw $a2, 256($a1)
	sw $a2, 260($a1)
	sw $a2, 512($a1)
	sw $a2, 516($a1)
	sw $a2, 768($a1)
	sw $a2, 772($a1)
	sw $a2, 1024($a1)
	sw $a2, 1032($a1)
	jr $ra
LETTER_L:
	sw $a2, ($a1)
	sw $a2, 256($a1)
	sw $a2, 512($a1)
	sw $a2, 768($a1)
	sw $a2, 1024($a1)
	sw $a2, 1028($a1)
	sw $a2, 1032($a1)
	jr $ra
LETTER_M:
	sw $a2, ($a1)
	sw $a2, 16($a1)
	sw $a2, 256($a1)
	sw $a2, 260($a1)
	sw $a2, 268($a1)
	sw $a2, 272($a1)
	sw $a2, 512($a1)
	sw $a2, 516($a1)
	sw $a2, 520($a1)
	sw $a2, 524($a1)
	sw $a2, 528($a1)
	sw $a2, 768($a1)
	sw $a2, 784($a1)
	sw $a2, 776($a1)
	sw $a2, 1024($a1)
	sw $a2, 1040($a1)
	jr $ra
LETTER_N:
	sw $a2, ($a1)
	sw $a2, 12($a1)
	sw $a2, 268($a1)
	sw $a2, 256($a1)
	sw $a2, 260($a1)
	sw $a2, 524($a1)
	sw $a2, 512($a1)
	sw $a2, 516($a1)
	sw $a2, 520($a1)
	sw $a2, 768($a1)
	sw $a2, 780($a1)
	sw $a2, 776($a1)
	sw $a2, 1024($a1)
	sw $a2, 1036($a1)
	jr $ra
LETTER_O:
	sw $a2, 4($a1)
	sw $a2, 256($a1)
	sw $a2, 264($a1)
	sw $a2, 512($a1)
	sw $a2, 520($a1)
	sw $a2, 768($a1)
	sw $a2, 776($a1)
	sw $a2, 1028($a1)
	jr $ra
LETTER_P:
	sw $a2, ($a1)
	sw $a2, 4($a1)
	sw $a2, 256($a1)
	sw $a2, 264($a1)
	sw $a2, 512($a1)
	sw $a2, 516($a1)
	sw $a2, 768($a1)
	sw $a2, 1024($a1)
	jr $ra
LETTER_Q:
	sw $a2, 780($a1)
	sw $a2, 1040($a1)
	sw $a2, 4($a1)
	sw $a2, 8($a1)
	sw $a2, 256($a1)
	sw $a2, 268($a1)
	sw $a2, 524($a1)
	sw $a2, 512($a1)
	sw $a2, 768($a1)
	sw $a2, 780($a1)
	sw $a2, 1028($a1)
	sw $a2, 1032($a1)
	sw $a2, 1040($a1)
	jr $ra
LETTER_R:
	sw $a2, ($a1)
	sw $a2, 4($a1)
	sw $a2, 256($a1)
	sw $a2, 264($a1)
	sw $a2, 512($a1)
	sw $a2, 516($a1)
	sw $a2, 768($a1)
	sw $a2, 776($a1)
	sw $a2, 1024($a1)
	sw $a2, 1032($a1)
	jr $ra
LETTER_S:
	sw $a2, 4($a1)
	sw $a2, 8($a1)
	sw $a2, 256($a1)
	sw $a2, 512($a1)
	sw $a2, 516($a1)
	sw $a2, 520($a1)
	sw $a2, 776($a1)
	sw $a2, 1024($a1)
	sw $a2, 1028($a1)
	jr $ra
LETTER_T:
	sw $a2, ($a1)
	sw $a2, 4($a1)
	sw $a2, 8($a1)
	sw $a2, 260($a1)
	sw $a2, 516($a1)
	sw $a2, 772($a1)
	sw $a2, 1028($a1)
	jr $ra
LETTER_U:
	sw $a2, ($a1)
	sw $a2, 8($a1)
	sw $a2, 256($a1)
	sw $a2, 264($a1)
	sw $a2, 512($a1)
	sw $a2, 520($a1)
	sw $a2, 768($a1)
	sw $a2, 776($a1)
	sw $a2, 1028($a1)
	jr $ra
LETTER_V:
	sw $a2, ($a1)
	sw $a2, 16($a1)
	sw $a2, 272($a1)
	sw $a2, 256($a1)
	sw $a2, 516($a1)
	sw $a2, 524($a1)
	sw $a2, 772($a1)
	sw $a2, 780($a1)
	sw $a2, 1032($a1)
	jr $ra
LETTER_W:
	sw $a2, ($a1)
	sw $a2, 16($a1)
	sw $a2, 8($a1)
	sw $a2, 256($a1)
	sw $a2, 272($a1)
	sw $a2, 264($a1)
	sw $a2, 512($a1)
	sw $a2, 528($a1)
	sw $a2, 520($a1)
	sw $a2, 768($a1)
	sw $a2, 784($a1)
	sw $a2, 776($a1)
	sw $a2, 1024($a1)
	sw $a2, 1036($a1)
	jr $ra
LETTER_X:
	sw $a2, ($a1)
	sw $a2, 8($a1)
	sw $a2, 256($a1)
	sw $a2, 264($a1)
	sw $a2, 516($a1)
	sw $a2, 768($a1)
	sw $a2, 776($a1)
	sw $a2, 1024($a1)
	sw $a2, 1032($a1)
	jr $ra
LETTER_Y:
	sw $a2, ($a1)
	sw $a2, 8($a1)
	sw $a2, 256($a1)
	sw $a2, 264($a1)
	sw $a2, 516($a1)
	sw $a2, 772($a1)
	sw $a2, 1028($a1)
	jr $ra
LETTER_Z:
	sw $a2, ($a1)
	sw $a2, 4($a1)
	sw $a2, 264($a1)
	sw $a2, 512($a1)
	sw $a2, 516($a1)
	sw $a2, 520($a1)
	sw $a2, 768($a1)
	sw $a2, 1028($a1)
	sw $a2, 1032($a1)
	jr $ra
##########################################################################################################
