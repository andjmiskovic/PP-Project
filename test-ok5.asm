
main:
		PUSH	%14
		MOV 	%15,%14
		SUBS	%15,$12,%15
@main_body:
		MOV 	$5,-4(%14)
		MOV 	$4,-8(%14)
		DIVS	$15,-4(%14),%0
		MOV 	%0,-4(%14)
		DIVS	$300,-4(%14),%0
		DIVS	%0,-8(%14),%0
		MOV 	%0,-12(%14)
		MOV 	-12(%14),%13
		JMP 	@main_exit
@main_exit:
		MOV 	%14,%15
		POP 	%14
		RET