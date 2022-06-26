
main:
		PUSH	%14
		MOV 	%15,%14
@main_body:
		MOV 	$11,%0
		MOV 	$11,%1
@while_test1:
		SUBS 	%1,$6,%1
		CMPS 	%1,$0
		JLES 	@while_end1
@while_body1:
		SUBS 	%0,$6,%0
		JMP 	@while_test1
@while_end1:
	
		MOV 	%0,%13
		JMP 	@main_exit
@main_exit:
		MOV 	%14,%15
		POP 	%14
		RET