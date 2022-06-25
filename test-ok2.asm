
main:
		PUSH	%14
		MOV 	%15,%14
		SUBS	%15,$4,%15
@main_body:
		MOV 	$1,%0
@for_init1:
		MOV 	$2,%1
@for_test1:
		ADDS 	%1,$0,%1
		JLES 	@for_end1
@for_body1:
		MULS	%0,%1,%0
@for_dec1:
		SUBS 	%1,$1,%1
		JMP 	@for_test1
@for_end1:
		MOV 	$1,%2
@for_init2:
		MOV 	$2,%3
@for_test2:
		ADDS 	%3,$0,%3
		JLES 	@for_end2
@for_body2:
		MULS	%2,%3,%2
@for_dec2:
		SUBS 	%3,$1,%3
		JMP 	@for_test2
@for_end2:
		MOV 	$2,-4(%14)
		MOV 	$1,%4
@for_init3:
		MOV 	$2,%5
@for_test3:
		ADDS 	%5,$0,%5
		JLES 	@for_end3
@for_body3:
		MULS	%4,%5,%4
@for_dec3:
		SUBS 	%5,$1,%5
		JMP 	@for_test3
@for_end3:
		ADDS	-4(%14),$2,%6
		MOV 	%6,-4(%14)
@main_exit:
		MOV 	%14,%15
		POP 	%14
		RET