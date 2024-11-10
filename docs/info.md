<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

NVM --- ignore the following. Used the verilog example so testbench would work.

Load two 8 bit values, input and weight, using the input switches. Switches 6,7,8 are signals to load the values.
Switches 1-4 are to specify the values of individual bits.

Switch8 - loadEN
Switch7 - which bits i'm loading in, either lower 4 bits or higher 4 bits (1 for lower, 0 for higher)
Switch6 - inputTYPE (whether loading in the 'input' or the 'weight')
Switches 1-4 - 4-bit values that will be loaded in

during loadEN, the output will display the input switches. otherwise, will display the product of input * weight
## How to test
Adder
Load different 8 bit values via the switches and try to multiply and see if the 7 segment display follows
## External hardware

List external hardware used in your project (e.g. PMOD, LED display, etc), if any
