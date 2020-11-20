1. Added mkNetwork.v and phaseTwo_tb.v into the project directory.

2. Run the simulation with module called "test_phaseTwo".

3. For testing, the flit coming from router 2 is set to 1. And the router R21 and R22 should receive a 1. Out0 represents the output from R22, and out1 represents the output from R21. The port out0 is 1 when the select bit is 0, and is 0 when the select bit is 1.The port out1 is 0 when the select bit is 0, and is 1 when the select bit is 1. In the tech bench, I frequently change the select bit, and you can see out0 and  out1 also change frequently.

4. Code added in mkNetwork.v
	line144-line152
	line2138-line2237