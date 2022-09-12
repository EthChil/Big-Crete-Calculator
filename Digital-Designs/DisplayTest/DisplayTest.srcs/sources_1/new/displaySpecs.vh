


//4DLCD-43480272-IPS panel specs (uses SC7283 driver)
//clock 8Mhz -> 12Mhz (9Mhz nominal)

`define FourDLCD

`ifdef FourDLCD
    `define H_PX 480
    `define V_PX 272
    
    //horizontal timing
    `define H_FP 8 //8 cycles of DCLK (pixels)
    `define H_BP 43 //43 //cycles of DCLK (pixels)
    `define HSYNC_W 4 //4 //cycles of DCLK (pixels)
    
    `define H_PX_START (`H_BP)
    `define H_FP_START (`H_PX_START + `H_PX)
    `define H_FP_END (`H_FP_START + `H_FP)
    
    //order is hsync -> BP -> (hPx + BP) -> (FP + H_PX_START)
    
    
    //vertical timing
    `define V_FP 8 //8
    `define V_BP 12  //12
    `define VSYNC_W 4  //4
    
    `define V_PX_START (`V_BP)
    `define V_FP_START (`V_PX_START + `V_PX)
    `define V_FP_END (`V_FP_START + `V_FP)
`else //fictitious test screen specs
    `define H_PX 10
    `define V_PX 2
    
    //horizontal timing
    `define H_FP 3 //8 cycles of DCLK (pixels)
    `define H_BP 5 //43 //cycles of DCLK (pixels)
    `define HSYNC_W 2 //4 //cycles of DCLK (pixels)
    
    `define H_PX_START (`H_BP)
    `define H_FP_START (`H_PX_START + `H_PX)
    `define H_FP_END (`H_FP_START + `H_FP)
    
    //order is hsync -> BP -> (hPx + BP) -> (FP + H_PX_START)
    
    
    //vertical timing
    `define V_FP 3 //8
    `define V_BP 5  //12
    `define VSYNC_W 2  //4
    
    `define V_PX_START (`V_BP)
    `define V_FP_START (`V_PX_START + `V_PX)
    `define V_FP_END (`V_FP_START + `V_FP)
`endif