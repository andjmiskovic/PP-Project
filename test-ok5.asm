
main:
		PUSH	%14
		MOV 	%15,%14
@main_body:
@for_init1:
	SUBS 	%0, %0, %0
@for_test1:
	
@for_body1:
	
@for_inc1:
	
@for_end1:
	
		MOV 	$27,%13
		JMP 	@main_exit
@main_exit:
		MOV 	%14,%15
		POP 	%14
		RET