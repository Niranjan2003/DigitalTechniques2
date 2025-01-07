package dotp_pkg;

   localparam NTAPS = 5;                 // Number of data/coeff inputs
   //localparam DB = 16;
   //localparam DB = 14;  
   localparam DB = 15;                  // Data bits (d_in)
   localparam CB = 15;                    // Coefficient bits /c_in)

   localparam MB = DB+CB;
                  // Multiplier output bits
    localparam SB = MB + 1;   
                // Accumulated sum bits
    localparam QB = SB - DB + 1;
            // Quantized (rounded) bits

   localparam logic signed [QB-1:0] rmax = $signed({{(QB-DB+1){1'b0}}, {(DB-1){1'b1}}}); 

   localparam logic signed [QB-1:0] rmin = $signed({{(QB-DB+1){1'b1}}, {(DB-1){1'b0}}}); 

   /*
    Repetition operator example:
    { 3 { 1'b1 } } is equal to 3'b111

    Comcatenation operator example:
    { 1'b1, 7'b0000000 } is equal to 8'b10000000
        
    Remember that concatenation { } result is unsigned.
    Use $signed( ) to force signedness.
    */
   
endpackage
   
