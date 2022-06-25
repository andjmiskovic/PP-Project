
main:
		PUSH	%14
		MOV 	%15,%14
		SUBS	%15,$12,%15
@main_body:
		MOV 	$5,-4(%14)
		MOV 	$3,-8(%14)
		ADDS	-4(%14),-8(%14),%0
		MULS	%0,$7,%0
		DIVS	$15,-4(%14),%1
		MULS	%1,$5,%1
		DIVS	%1,$5,%1
		ADDS	%0,%1,%0
		MOV 	%0,-12(%14)
		MOV 	-12(%14),%13
		JMP 	@main_exit
@main_exit:
		MOV 	%14,%15
		POP 	%14
		RET