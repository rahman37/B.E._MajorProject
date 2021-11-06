module tb_counter;
reg clk;
reg rstn;
wire [3:0] out;

counter c0 (.clk(clk), .rstn(rstn), .out(out));
always #5 clk = ~clk;

initial begin
    clk <= 0;
rstn <= 0;

#20 rstn <= 1;
#80 rstn <= 1;
#50 rstn <= 1;

#20 $finish;

    end
    initial begin
		$monitor("@:%0t :: rstn:%0b, clk:%0b, out:%0b", $time, rstn, clk, out);
	end

        initial begin
        $dumpfile("upc.vcd");
        $dumpvars(1);
    end
    
endmodule
