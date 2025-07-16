CP = Cell pointer

		Make the mkdir sys_call (83)

	(( Put 10 in cell 0))
> | MV CELL1 CP
+++++ | STR CELL1 5

[ LOOP_1
	< | MV CELL0 CP
	++ | ADD CELL0 2
	> | MV CELL1 CP
	- | SUB CELL1 1
] | JMPNEQ (CELL1 0) LOOP_1

< | MV CELL0 CP
	(( Put 10 in cell 0))

	((Put 83 in cell 2))

[ LOOP_3
	>>> | MV CELL3 CP
	++++ | STR CELL3 4
	
	[ LOOP_3_INNER1
		<< | MV CELL1 CP
		++ | ADD CELL1 2
		>> | MV CELL3 CP
		- | SUB CELL3 1
	] | JMPNEQ (CELL3 0) LOOP_3_INNER1
	(This stores 8 in CELL1)
	
	<< | MV CELL1 CP

	[ LOOP_3_INNER2
		> | MV CELL2 CP
		+ | ADD CELL2 1
		< | MV CELL1 0
		- | SUB CELL1 1
	] | JMPNEQ (CELL1 0) LOOP_3_INNER2
	(This adds 8 to CELL2)

	< | MV CELL0 CP
	- | SUB CELL0 CP
	(Do this 10 times)
]

>> | MV CELL2 CP
+++ | ADD CELL2 3
	((Put 83 in cell 2))
