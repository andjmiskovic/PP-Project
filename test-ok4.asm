
main:
		PUSH	%14
		MOV 	%15,%14
@main_body:
		MOV 	$1,%0
@for_init1:
		MOV 	$5,%1
@for_test1:
		ADDS 	%1,$0,%1
		JLES 	@for_end1
@for_body1:
		MULS	%0,%1,%0
@for_dec1:
		SUBS 	%1,$1,%1
		JMP 	@for_test1
@for_end1:
		MOV 	$5,%13
		JMP 	@main_exit
@main_exit:
		MOV 	%14,%15
		POP 	%14
		RET