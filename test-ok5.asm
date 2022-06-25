
main:
		PUSH	%14
		MOV 	%15,%14
@main_body:
		MOV 	$27,%13
		JMP 	@main_exit
@main_exit:
		MOV 	%14,%15
		POP 	%14
		RET