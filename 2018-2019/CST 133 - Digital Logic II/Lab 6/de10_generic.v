
//=======================================================
//  This code is generated by Terasic System Builder
//=======================================================

module de10_generic(

	//////////// CLOCK //////////
	input 		          		ADC_CLK_10,
	input 		          		MAX10_CLK1_50,
	input 		          		MAX10_CLK2_50,

	//////////// SEG7 //////////
	output		     [7:0]		HEX0,
	output		     [7:0]		HEX1,
	output		     [7:0]		HEX2,
	output		     [7:0]		HEX3,
	output		     [7:0]		HEX4,
	output		     [7:0]		HEX5,

	//////////// KEY //////////
	input 		     [1:0]		KEY,

	//////////// LED //////////
	output		     [9:0]		LEDR,

	//////////// SW //////////
	input 		     [9:0]		SW,

	//////////// Arduino //////////
	inout 		    [15:0]		ARDUINO_IO,
	inout 		          		ARDUINO_RESET_N,

	//////////// GPIO, GPIO connect to GPIO Default //////////
	inout 		    [35:0]		GPIO
);

//=======================================================
//  REG/WIRE declarations
//=======================================================

wire [3:0] bcd_connector;

//shift_reg shifty(.D(SW[3:0]),.load(SW[4]),.l_r(SW[5]),.sin(SW[6]),.clk(SW[7]),.reset(SW[8]),.Q(LEDR[5:2]),.sout(LEDR[1]));
sync_counter county(.D({2'b00, SW[5:0]}),.up_down(SW[6]),.load(SW[7]),.reset(SW[9]),.clk(SW[9]),.Q(LEDR[7:0]));
//bcd_counter bcdcounty(.cen(SW[0]),.up_down(SW[1]),.reset(SW[8]),.clk(SW[9]),.Q(bcd_connector));
//bcd_decoder decodey(.bin_in(bcd_connector),.sseg_out(HEX0[7:0]));
//=======================================================
//  Structural coding
//=======================================================



endmodule
