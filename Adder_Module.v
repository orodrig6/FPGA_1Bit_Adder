/* //the following is the testbench for this Adder gate
module myModule_tb(); 
    wire out;
    reg clock1,clock2,clock3;
     
    always begin
		#1 clock1 =!clock1;
		#2 clock2 = !clock2;
		#1 clock3 = !clock3;
    end
	 
     
    initial begin
		//Initialize clock
		clock1 = 0;
		
		clock2=0;
     clock3=0; 
	  #2
		//End simulation
		#20
		$finish;
    end
     
    Adder_Module Adder(clock1,clock2,clock3,S,Cout);
	 
endmodule
*/
module Adder_Module(
    input A,
    input B,
	 input Cin,
    output S,
    output Cout
	 
    );
assign S = !A ^ !B ^ !Cin;
assign Cout = !A & !B | !A&!Cin | !B&!Cin;
//replace the above two lines with the lines below if your dip switches/pins are normally tied to ground
/*
assign S = A ^ B ^ Cin;
assign Cout = A & B | A&Cin | B&Cin;
*/
endmodule
