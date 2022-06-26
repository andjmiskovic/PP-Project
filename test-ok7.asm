
main:
		PUSH	%14
		MOV 	%15,%14
		SUBS	%15,$8,%15
@main_body:
		MOV 	$1,%0
@for_init1:
		MOV 	$2,%1
@for_test1:
		CMPU 	%1,$0
		JLEU 	@for_end1
@for_body1:
		MULU	%0,$2,%0
@for_dec1:
		SUBU 	%1,$1,%1
		JMP 	@for_test1
@for_end1:
		ADDS	$17,%0,%1
		MOV 	%1,-4(%14)
		MOV 	$-5,%1
		CMPS 	%1, $0
		JLTS 	@negative1
		JMP 	@positive1
@negative1:
		DIVS 	%1, $-1, %1
@positive1:
		MULS	$3,%1,%1
		SUBS	-4(%14),%1,%1
		MOV 	%1,%2
		CMPS 	%2, $0
		JLTS 	@negative2
		JMP 	@positive2
@negative2:
		DIVS 	%2, $-1, %2
@positive2:
		MOV 	%2,-8(%14)
		ADDS	-4(%14),-8(%14),%1
		DIVS	%1,$9,%1
		MOV 	%1,%13
		JMP 	@main_exit
@main_exit:
		MOV 	%14,%15
		POP 	%14
		RET