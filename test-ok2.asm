
main:
		PUSH	%14
		MOV 	%15,%14
		SUBS	%15,$16,%15
@main_body:
		MOV 	$5,-4(%14)
		MOV 	$4,-8(%14)
		MOV 	$8,-12(%14)
		MULS	-4(%14),$17,%0
		MOV 	%0,-4(%14)
		MULS	-4(%14),-8(%14),%0
		MULS	%0,-12(%14),%0
		MOV 	%0,-16(%14)
		MOV 	-16(%14),%13
		JMP 	@main_exit
@main_exit:
		MOV 	%14,%15
		POP 	%14
		RET