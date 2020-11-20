Team Member: 
	Yuming Fei, Tiffany Chiang, Nicholas Wang

Execution of Code: 
	Copy three mapping files into the project directory, and start simulation. "test" 	module is for simulation of first mapping. "test_2" module is for simulation of 	second mapping. "test_3" module is for simulation of third mapping.



Discussion: 
	As we can see from the waveform screenshot, 
	for the first mapping, we get the final output 133 (85 in hex) at time 135ns, 
	for the second mapping, we get the final output 133 (85 in hex) at time 145ns, 
	for the third mapping, we get the final output 133 (85 in hex) at time 125ns.
	The performance varies with the mapping schemes because the distance between nodes 	in different mapping is different. For example, for AND operation, it needs input 	from add1. And in three different mappings, the data is transferred from R4 -> R3 	in first mapping, R2 -> R0 in second mapping, R1->R3. And the path is shorter in R	4->R3, longger in R2->R0 and R1->R3. Moreover, each distinct path can have 		different propagation delay, that is why the performance varies.
