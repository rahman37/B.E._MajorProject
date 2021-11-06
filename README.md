# B.E.- Major Project 2021-2022
My name is Mohammed Abdur Rahman, createdthis repository on 03-11-2021, I am currently pursuing E.C.E. from MJCET, I have created this repository for my final year project.
My project title is "Implementation and Physical Design of 8/4-Bit Signed Divider".
I am doing this project with my teammates Moiz and Musharraf. My mentor for this project is Zakir Hussain sir.


In This I am going to explain how to use Iverilog and Gtkwave for verification and simulation of verilog modules using VScode as IDE. As we know Iverilog and gtkwave are opensource EDA tools it only runs on command prompt to make it simpler i am using vscode which provide a compact view for dealing with this kind of Opensource tools .

Before getting start plz do install:

1.icarus verilog (for windows download link:https://bleyer.org/icarus/ ).

2.vscode download link-https://code.visualstudio.com/download (also extentions i.Verilog-HDL/SystemVerilog/Bluespec SystemVerilog and ii.Graphviz Preview).

Lets Get Started

Step-1

open vscode and in vscode click openfolder using any of the two methods
![image](https://user-images.githubusercontent.com/53487992/140598752-934a619a-1dc1-402c-abab-46bdcc0cb0eb.png)

![image](https://user-images.githubusercontent.com/53487992/140598764-98be7dc2-b4b9-42f7-8669-7b1311aa2205.png)

Step-2 Creat New Folder as shown and name it. In my case Decoder
![image](https://user-images.githubusercontent.com/53487992/140598832-d0cb74f8-4135-4478-9e42-83e62f9e2ea3.png)

after this select the created folder and click selectfolder button as shown
![image](https://user-images.githubusercontent.com/53487992/140598864-34b0b581-ce7e-4fee-8fb3-fae3d8c0fa7e.png)

Step-3

create new file with .v extension for example (dec.v), by clicking the shown button
![image](https://user-images.githubusercontent.com/53487992/140598883-94b10380-4553-4555-bfc9-93c105a18d90.png)

write the verilog code in that folder
![image](https://user-images.githubusercontent.com/53487992/140598904-d2c51386-0018-4019-b185-aa8315078046.png)

(i will update a repository for various verilog modules, for now get verilog codes here : https://github.com/vision-vlsi/verilog/tree/main/Combinational_circuits )

Step-4 Creat a TestBench file for the written verilog module. the main key point to take care while writing testbench is as followes

1.include "$dumpfile"

2.include "$monitor"

create test bench file 
![image](https://user-images.githubusercontent.com/53487992/140598934-c58047d6-bd00-4680-bd0c-53df7217b3ed.png)


Step-5 Now open a new terminal as shown

![image](https://user-images.githubusercontent.com/53487992/140598947-d85c7dfc-739a-4125-bf30-c2b1d555acd5.png)


In terminal type the following commands

1. iverilog modulename testbenchname 
2. ![Decsnap2](https://user-images.githubusercontent.com/53487992/140598972-cf55df12-fba0-43f6-8c7d-39d1b75a19b2.jpg)

a.out is generated 
![decsnap3](https://user-images.githubusercontent.com/53487992/140598988-377bce7c-2261-4ebc-8005-a5dc0d27a96d.jpg)

Step-6

2.vvp a.out
![Decsnap2](https://user-images.githubusercontent.com/53487992/140599011-e1ca2484-cec2-4685-bde1-762419fe528f.jpg)


yosys

![dec5](https://user-images.githubusercontent.com/53487992/140599022-34799816-264e-4cbd-ad2e-00b27e05d4a2.jpg)


show.dot

![dec6](https://user-images.githubusercontent.com/53487992/140599027-e669cdc4-69b4-43bb-8415-99aca6407661.jpg)

report.txt

![dec7](https://user-images.githubusercontent.com/53487992/140599036-a840d4dd-1827-4a0a-8e51-05002e46af45.jpg)


gtkwave decoder

![DEcSnap](https://user-images.githubusercontent.com/53487992/140599042-cb21f40d-0d84-44e2-a65f-6a2deeb4550a.jpg)


testbench

![decsnap3](https://user-images.githubusercontent.com/53487992/140599052-3f00eea0-49a6-498e-9c96-5dcea8c22e8d.jpg)


required commands for successfull synthesis are

1. yosys

2.read_liberty -lib sky130_fd_sc_hd__tt_025C_1v80.lib

3.read_verilog encoder.v

4.synth -top modulename

5.dfflibmap -liberty sky130_fd_sc_hd__tt_025C_1v80.lib

6.abc -liberty sky130_fd_sc_hd__tt_025C_1v80.lib

7.show modulename --> view --> command palette --> graphviz

8.tee -o report.txt stat -liberty sky130_fd_sc_hd__tt_025C_1v80.lib

9.write_verilog -noattr netlist.v

10.exit

code for gatelevel simulation :

1. iverilog netlist.v sky130_fd_sc_hd.v tb.v











