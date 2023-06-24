"""
The project is developed as part of Computer Architecture class.
Project Name: Functional Simulator for subset of RISC-V Processor

-------------------------------------------------
| Developer's Name   | Developer's Email ID     |
|-----------------------------------------------|
| Dhananjay Goel     | 2021csb1165@iitrpr.ac.in |
| Dhruv Singh Negi   | 2021csb1167@iitrpr.ac.in |
| Kritika Bansal     | 2021csb1184@iitrpr.ac.in |
| Virat Jain         | 2021csb1220@iitrpr.ac.in |
-------------------------------------------------

"""
import time as t
import memory as mem

X = [0]*32
MEM = {}
Exit1 = 0
Exit2 = 0
Exit3 = 0
Exit4 = 0
Exit5 = 0
Data_Memory = {}
ins_cache={}
data_cache={}

instruction_word = [["",""],["",""],["",""],["",""],["",""]]
ALUResult = [[0,0],[0,0],[0,0],[0,0],[0,0]]
opcode = [[0,0],[0,0],[0,0],[0,0],[0,0]]
rd = [["",""],["",""],["",""],["",""],["",""]]
rs1 = [["",""],["",""],["",""],["",""],["",""]]
rs2 = [["",""],["",""],["",""],["",""],["",""]]
func3 = [[0,0],[0,0],[0,0],[0,0],[0,0]]
func7 = [[0,0],[0,0],[0,0],[0,0],[0,0]]
imm = [["",""],["",""],["",""],["",""],["",""]]
is_branch = [[0,0],[0,0],[0,0],[0,0],[0,0]]
result_select = [[0,0],[0,0],[0,0],[0,0],[0,0]]
Branch_Target_Select = [[0,0],[0,0],[0,0],[0,0],[0,0]]
RF_Write = [[0,0],[0,0],[0,0],[0,0],[0,0]]
value = [["",""],["",""],["",""],["",""],["",""]]
count = 0
operand1 = [[0,0],[0,0],[0,0],[0,0],[0,0]]
operand2 = [[0,0],[0,0],[0,0],[0,0],[0,0]]
clock = 0
stall = [[False,False],[False,False],[False,False],[False,False],[False,False]]
PC = [[0,0],[0,0],[0,0],[0,0],[0,0]]
pc=0
btb={}
prev_resisters= [[-1,-1,-1],[-1,-1,-1],[-1,-1,-1]]
end = False
stall_left=0
instruction_exe=0
ALU_ins=0
Control_ins=0
Data_haz=0
Control_haz=0
Data_transfer_ins=0
stall_count=0
stall_data=0
stall_control=0
branch_miss=0

def BTB_Add(pc,address,state):
    global btb
    btb[pc]=[state,address]

# it is used to set the reset values reset all registers and memory content to 0
def reset_proc():
    global MEM
    global X
    for i in range(32):
        X[i] = int('0x00000000', 16)
    X[2] = int('0x7FFFFFDC', 16)
    X[3] = int('0x10000000', 16)
    X[10] = int('0x00000001', 16)
    X[11] = int('0x7FFFFFDC', 16)
    MEM={}
    print("REGISTER FILE AND INSTRUCTION MEMORY HAS BEEN RESETTED")

# def write_word(address,hex_instruction):
    
#     hex_instruction = hex_instruction[2:]    
#     a = hex_instruction[0 : 2]
#     b = hex_instruction[2 : 4]
#     c = hex_instruction[4 : 6]
#     d = hex_instruction[6 : 8]
#     int_address = int(address[2:], base = 16)
#     MEM[int_address] = a
#     MEM[int_address + 1] = b
#     MEM[int_address + 2] = c
#     MEM[int_address + 3] = d

def stats():
    global instruction_exe
    global ALU_ins
    global Control_ins
    global Data_haz
    global Control_haz
    global Data_transfer_ins
    global stall_count
    global stall_data
    global stall_control
    global branch_miss
    global clock
    cpi= clock/instruction_exe
    fip = open("stats.mc", "w")
    fip.write("Total Clock Cycles                       -> "+ str(clock) + "\n")
    fip.write("Total Instruction Executed               -> "+ str(instruction_exe) + "\n")
    fip.write("Total ALU Instructions Executed          -> "+ str(ALU_ins) + "\n")
    fip.write("Total Control Instruction Executed       -> "+ str(Control_ins) + "\n")
    fip.write("Total Data Transfer Instruction Executed -> "+ str(Data_transfer_ins) + "\n")
    fip.write("Total Data Hazards Detected              -> "+ str(Data_haz) + "\n")
    fip.write("Total Control Hazards Detected           -> "+ str(Control_haz) + "\n")
    fip.write("Total Stall Count                        -> "+ str(stall_count) + "\n")
    fip.write("Total Data Hazard Stall                  -> "+ str(stall_data) + "\n")
    fip.write("Total Control Hazard Stall               -> "+ str(stall_control) + "\n")
    fip.write("Total Branch Miss Predicted              -> "+ str(branch_miss) + "\n")
    fip.write("CPI                                      -> "+ str(cpi) + "\n")

# load_program_memory reads the input memory, and populates the instruction memory
def load_program_memory(file_name,block_sz,cache_sz,mapping1,asso,repla):

    mem.set_parameters(block_sz,cache_sz,mapping1,asso,repla)

    global count
    fp = open(file_name,'r')
    for words in fp:
        tmp = words.split()
        if(tmp == []): return
        address, instruction = tmp[0], tmp[1]
        address = hex(int(address,16)//4)
        # print(address, instruction)
        MEM[address]=instruction
        count += 1
    fp.close()
    print("INPUT FILE LOADED")
    print("\n")
    
# Creates a "data_out.mc" file and writes the data memory in it. It also creates
# a reg_out.mc file and writes the contents of registers in it.
def write_data_memory():
    
    fp = open("data_out.mc", "w")
    output=[]
    sorted_Data_Memory = sorted(Data_Memory.keys())
    sorted_dict = {key:Data_Memory[key] for key in sorted_Data_Memory}
    for address, data in sorted_dict.items():
        output.append(address+" "+data+"\n")
    fp.writelines(output)
    fp.close()
    print("WRITTEN TO DATA MEMORY")

    fp = open("reg_out.mc", "w")
    out_tmp = []
    for i in range(32):
        out_tmp.append('x' + str(i) + ' ' + str(X[i]) + '\n')
    fp.writelines(out_tmp)
    fp.close()
    print("WRITTEN TO REGISTER FILE")
    print("\n")

# should be called when instruction is swi_exit
def swi_exit():
    write_data_memory()
    exit(0)

def binToHexa(n):
    
    # convert binary to int
    num = int(n, 2)
    # convert int to hexadecimal
    hex_num = hex(num)
    return(hex_num)
 
def findTwoscomplement(str):
    
	n = len(str)
	i = n - 1
	while(i >= 0):
		if (str[i] == '1'):
			break
		i -= 1
	if (i == -1):
		return '1'+str
	k = i - 1
	while(k >= 0):
		if (str[k] == '1'):
			str = list(str)
			str[k] = '0'
			str = ''.join(str)
		else:
			str = list(str)
			str[k] = '1'
			str = ''.join(str)
		k -= 1
	return str

def actual_imm(imm2):
    
    global instruction_word 
    global ALUResult 
    global opcode 
    global rd 
    global rs1 
    global rs2 
    global func3 
    global func7 
    global is_branch 
    global result_select 
    global Branch_Target_Select 
    global RF_Write 
    global value 
    global count
    global operand1  
    global operand2  
    global clock  
    global PC 
    
    if(imm2[0] == '1'):
        s = findTwoscomplement(imm2)
        return (-1) * (int(s, base = 2))
    else:
        return int(imm2[1:], base = 2)
    
def PC_Update():
    
    global instruction_word 
    global ALUResult 
    global opcode 
    global rd 
    global rs1 
    global rs2 
    global func3 
    global func7 
    global imm 
    global is_branch 
    global result_select 
    global Branch_Target_Select 
    global RF_Write 
    global value 
    global count
    global operand1  
    global operand2  
    global clock  
    global PC 

    if(is_branch == 0):
        PC = PC + 4
    elif(is_branch == 1):
        PC = PC + actual_imm(imm)
    else:
        PC = ALUResult
    
    print("  PC UPDATED TO-> ",PC)
    

def fetch():
    
    global instruction_word 
    global ALUResult 
    global opcode 
    global rd 
    global rs1 
    global rs2 
    global func3 
    global func7 
    global is_branch 
    global result_select 
    global Branch_Target_Select 
    global RF_Write 
    global value 
    global count
    global operand1  
    global operand2  
    global clock  
    global stall
    global PC  
    global Exit1 
    global pc
    global stall_left
    global instruction_exe
    
    is_branch[0][0] = 0
    result_select[0][0] = 0
    Branch_Target_Select[0][0] = 0
    RF_Write[0][0] = 0
    result_select[0][0] = 0
    stall[0][0]=False
    if(stall_left==0):
        mem.cache_type=1
        instruction_exe+=1
        instruction_word[0][0] = mem.read(ins_cache,hex(pc//4),MEM)
    print('  FETCH STAGE: INSTRUCTION - '+ instruction_word[0][0] + ' From address - '+ hex(pc))
    PC[0][0] = pc
    if(stall_left==0):
        if(pc in btb.keys()):
            print("BRANCH TABLE BUFFER :    PC   ",pc,"   ADDRESS:    ",btb[pc][1])
            pc=btb[pc][1]
        else:
            pc += 4
    
    if(instruction_word[0][0] == "0xFFFFFFFF"):
        Exit1 = 1
        return

def decode():

    global instruction_word 
    global ALUResult 
    global opcode 
    global rd 
    global rs1 
    global rs2 
    global func3 
    global func7 
    global is_branch 
    global result_select 
    global Branch_Target_Select 
    global RF_Write 
    global value 
    global count
    global operand1  
    global operand2  
    global clock  
    global stall
    global PC  
    global Exit1
    global Exit2 
    global pc
    global stall_left
    global Data_haz
    global stall_data
    global stall_count
    
    if(stall[0][1]==True):

        instruction_word[0][1] = instruction_word[0][0] 
        ALUResult[0][1] = ALUResult[0][0] 
        opcode[0][1] = opcode[0][0] 
        rd[0][1] =  rd[0][0] 
        rs1[0][1] = rs1[0][0] 
        rs2[0][1] = rs2[0][0] 
        func3[0][1] = func3[0][0] 
        func7[0][1] = func7[0][0] 
        is_branch[0][1] = is_branch[0][0] 
        result_select[0][1] = result_select[0][0] 
        Branch_Target_Select[0][1] = Branch_Target_Select[0][0] 
        RF_Write[0][1] = RF_Write[0][0] 
        value[0][1] = value[0][0] 
        operand1[0][1] = operand1[0][0]  
        operand2[0][1] = operand2[0][0]  
        stall[0][1] = stall[0][0]
        PC [0][1] = PC [0][0]
        imm[0][1] = imm[0][0]


        stall[1][0]=True
        print("  DECODE STAGE WHEN THERE IS A STALL ------------------------>")
        return

    instruction_word[1][0] = instruction_word[0][1] 
    ALUResult[1][0] = ALUResult[0][1] 
    opcode[1][0] = opcode[0][1] 
    rd[1][0] =  rd[0][1] 
    rs1[1][0] = rs1[0][1] 
    rs2[1][0] = rs2[0][1] 
    func3[1][0] = func3[0][1] 
    func7[1][0] = func7[0][1] 
    is_branch[1][0] = is_branch[0][1] 
    result_select[1][0] = result_select[0][1] 
    Branch_Target_Select[1][0] = Branch_Target_Select[0][1] 
    RF_Write[1][0] = RF_Write[0][1] 
    value[1][0] = value[0][1] 
    operand1[1][0] = operand1[0][1]  
    operand2[1][0] = operand2[0][1]   
    stall[1][0] = stall[0][1]
    PC [1][0] = PC [0][1] 
    imm[1][0] = imm[0][1]

    if(instruction_word[0][1] == "0xFFFFFFFF"):
        Exit2 = 1
        return

    instruction_word_temp = instruction_word[0][1]
    instruction_word_temp = instruction_word_temp[2:]
    int_value = int(instruction_word_temp, base = 16)
    code = bin(int_value)[2 : ].zfill(32)
    code = code[::-1]
    opcode[1][0] = code[6 :: -1]
    if( opcode[1][0] == "0110011"): # R
        rd[1][0] = code[11 : 6 : -1]
        func3[1][0] = code[14 : 11 : -1]
        rs1[1][0] = code[19 : 14 : -1]
        rs2[1][0] = code[24 : 19 : -1]
        func7[1][0] = code[31 : 24 : -1]
        operand1[1][0] = X[int(rs1[1][0], base = 2)]
        operand2[1][0] = X[int(rs2[1][0], base = 2)]
        RF_Write[1][0] = 1
        print('  DECODE STAGE: INSTRUCTION with PC: ', hex(PC[0][1]) , " is of type R ")
    elif (opcode[1][0] == "0010011") : # I
        rd[1][0] = code[11 : 6 : -1]
        func3[1][0] = code[14 : 11 : -1]
        rs1[1][0] = code[19 : 14 : -1]
        imm[1][0] = code[31 : 19 : -1]
        operand1[1][0] = X[int(rs1[1][0], base = 2)]
        operand2[1][0] = actual_imm(imm[1][0])
        RF_Write[1][0] = 1
        print('  DECODE STAGE: INSTRUCTION with PC: ', hex(PC[0][1]) , " is of type I ")
        
    elif (opcode[1][0] == "0000011" or opcode == "1100111") : # I
        rd[1][0] = code[11 : 6 : -1]
        func3[1][0] = code[14 : 11 : -1]
        rs1[1][0] = code[19 : 14 : -1]
        imm[1][0] = code[31 : 19 : -1]
        operand1[1][0] = X[int(rs1[1][0], base = 2)]
        operand2[1][0] = actual_imm(imm[1][0])
        RF_Write[1][0] = 1
        print('  DECODE STAGE: INSTRUCTION with PC: ', hex(PC[0][1]) , " is of type I ")
        
    elif (opcode[1][0] == "0100011") : # S
        imm2 = code[11 : 6 : -1]
        func3[1][0] = code[14 : 11 : -1]
        rs1[1][0] = code[19 : 14 : -1]
        rs2[1][0] = code[24 : 19 : -1]
        imm1 = code[31 : 24 : -1]
        imm[1][0] = imm1 + imm2
        operand1[1][0] = X[int(rs1[1][0], base = 2)]
        operand2[1][0] = actual_imm(imm[1][0])
        RF_Write[1][0] = 0
        print('  DECODE STAGE: INSTRUCTION with PC: ', hex(PC[0][1]) , " is of type S ")
        
    elif (opcode[1][0] == "1100011") : # B
        imm2 = code[11 : 6 : -1]
        func3[1][0] = code[14 : 11 : -1]
        rs1[1][0] = code[19 : 14 : -1]
        rs2[1][0] = code[24 : 19 : -1]
        imm1 = code[31 : 24 : -1]
        imm[1][0] = imm1[0] + imm2[-1] + imm1[1 : ] + imm2[0 : 4] + "0"
        operand1[1][0] = X[int(rs1[1][0], base = 2)]
        operand2[1][0] = X[int(rs2[1][0], base = 2)]
        RF_Write[1][0] = 0
        print('  DECODE STAGE: INSTRUCTION with PC: ', hex(PC[0][1]) , " is of type B ")
    
    elif (opcode[1][0] == "1101111") : # J
        rd[1][0] = code[11 : 6 : -1]
        imm1 = code[31 : 11 : -1]
        imm[1][0] = imm1[0] + imm1[12 : ] + imm1[11] + imm1[1 : 11] + "0" 
        operand1[1][0] = 0
        operand2[1][0] = 0
        RF_Write[1][0] = 1
        print('  DECODE STAGE: INSTRUCTION with PC: ', hex(PC[0][1]) , " is of type J ")
        
    elif (opcode[1][0] == "0110111") : # U
        rd[1][0] = code[11 : 6 : -1]
        imm[1][0] = code[31 : 11 : -1]
        operand1[1][0] = 0
        operand2[1][0] = actual_imm(imm[1][0])
        RF_Write[1][0] = 1
        print('  DECODE STAGE: INSTRUCTION with PC: ', hex(PC[0][1]) , " is of type U ")
        
    else:
        print("  ERROR : instruction not found")
        swi_exit()

    if(stall_left>0):
        stall[1][0]=True
        stall_left-=1
        if(stall_left==0):
            stall[1][0]=False
            pc+=4
        
        prev_resisters[0]=prev_resisters[1]
        prev_resisters[1]=prev_resisters[2]
        prev_resisters[2] = [-1 , -1 , -1]

    if(stall_left==0):
        for i in range(3):
            if(rs1[1][0]==prev_resisters[i][2] and rs1[1][0]!=""):
                if(i+1>stall_left):
                    r=rs1[1][0]
                stall_left=max(i+1,stall_left)
        for i in range(3):
            if(rs2[1][0]==prev_resisters[i][2] and rs2[1][0]!=""):
                if(i+1>stall_left):
                    r=rs2[1][0]
                stall_left=max(i+1,stall_left)
        stall_data+=stall_left
        stall_count+=stall_left
        prev_resisters[0]=prev_resisters[1]
        prev_resisters[1]=prev_resisters[2]
        prev_resisters[2] = [rs1[1][0],rs2[1][0],rd[1][0]]
        if(stall_left>0):
            stall[1][0]=True
            Data_haz+=1
            print("Data Hazard Detected")
            pc-=4

    if(stall_left==0):
        instruction_word[0][1] = instruction_word[0][0] 
        ALUResult[0][1] = ALUResult[0][0] 
        opcode[0][1] = opcode[0][0] 
        rd[0][1] =  rd[0][0] 
        rs1[0][1] = rs1[0][0] 
        rs2[0][1] = rs2[0][0] 
        func3[0][1] = func3[0][0] 
        func7[0][1] = func7[0][0] 
        is_branch[0][1] = is_branch[0][0] 
        result_select[0][1] = result_select[0][0] 
        Branch_Target_Select[0][1] = Branch_Target_Select[0][0] 
        RF_Write[0][1] = RF_Write[0][0] 
        value[0][1] = value[0][0]
        operand1[0][1] = operand1[0][0]  
        operand2[0][1] = operand2[0][0]   
        stall[0][1] = stall[0][0]
        PC [0][1] = PC [0][0] 
        imm[0][1] = imm[0][0]
    
def execute():
    
    global instruction_word 
    global ALUResult 
    global opcode 
    global rd 
    global rs1 
    global rs2 
    global func3 
    global func7 
    global imm 
    global is_branch 
    global result_select 
    global Branch_Target_Select 
    global RF_Write 
    global value 
    global count
    global operand1  
    global operand2  
    global clock 
    global Exit3 
    global PC 
    global pc
    global stall_left
    global ALU_ins
    global Control_ins
    global Data_transfer_ins
    global stall_count
    global stall_data
    global stall_control
    global Control_haz
    global branch_miss

    if(stall[1][1] ):
        instruction_word[1][1] = instruction_word[1][0] 
        ALUResult[1][1] = ALUResult[1][0] 
        opcode[1][1] = opcode[1][0] 
        rd[1][1] =  rd[1][0] 
        rs1[1][1] = rs1[1][0] 
        rs2[1][1] = rs2[1][0] 
        func3[1][1] = func3[1][0] 
        func7[1][1] = func7[1][0] 
        is_branch[1][1] = is_branch[1][0] 
        result_select[1][1] = result_select[1][0] 
        Branch_Target_Select[1][1] = Branch_Target_Select[1][0] 
        RF_Write[1][1] = RF_Write[1][0] 
        value[1][1] = value[1][0] 
        operand1[1][1] = operand1[1][0]  
        operand2[1][1] = operand2[1][0]    
        stall[1][1] = stall[1][0]
        PC [1][1] = PC [1][0]
        imm[1][1] = imm[1][0]

        stall[2][0]=True
        print("  EXECUTE STAGE WHEN THERE IS A STALL ------------------------>")
        return
    
    instruction_word[2][0] = instruction_word[1][1] 
    ALUResult[2][0] = ALUResult[1][1] 
    opcode[2][0] = opcode[1][1] 
    rd[2][0] =  rd[1][1] 
    rs1[2][0] = rs1[1][1] 
    rs2[2][0] = rs2[1][1] 
    func3[2][0] = func3[1][1] 
    func7[2][0] = func7[1][1] 
    is_branch[2][0] = is_branch[1][1] 
    result_select[2][0] = result_select[1][1] 
    Branch_Target_Select[2][0] = Branch_Target_Select[1][1] 
    RF_Write[2][0] = RF_Write[1][1] 
    value[2][0] = value[1][1] 
    operand1[2][0] = operand1[1][1]  
    operand2[2][0] = operand2[1][1]    
    stall[2][0] = stall[1][1]
    PC [2][0] = PC [1][1] 
    imm[2][0] = imm[1][1]

    if(instruction_word[1][1] == "0xFFFFFFFF"):
        Exit3 = 1
        return
    flag=0
    if(opcode[1][1]  == "0110011"): # R
        ALU_ins+=1
        if(binToHexa(func3[1][1]) == "0x0"):
            if (binToHexa(func7[1][1]) == "0x0"): # ADD
                print("  EXECUTING ADD INSTRUCTION with PC ",hex(PC[1][1]))
                is_branch[2][0] = 0
                ALUResult[2][0] = operand1[1][1] + operand2[1][1]
            elif (binToHexa(func7[1][1]) == "0x20"): # SUB
                print("  EXECUTING SUB INSTRUCTION with PC ",hex(PC[1][1]))
                is_branch[2][0] = 0
                ALUResult[2][0] = operand1[1][1] - operand2[1][1]
                
        elif (binToHexa(func3[1][1]) == "0x4"): # XOR
            print("  EXECUTING XOR INSTRUCTION with PC ",hex(PC[1][1]))
            is_branch[2][0] = 0
            ALUResult[2][0] = operand1[1][1] ^ operand2[1][1]
            
        elif (binToHexa(func3[1][1]) == "0x6"): # OR
            print("  EXECUTING OR INSTRUCTION with PC ",hex(PC[1][1]))
            is_branch[2][0] = 0
            ALUResult[2][0] = operand1[1][1] | operand2[1][1]
            
        elif (binToHexa(func3[1][1]) == "0x7"): # AND
            print("  EXECUTING AND INSTRUCTION with PC ",hex(PC[1][1]))
            is_branch[2][0] = 0
            ALUResult[2][0] = operand1[1][1] & operand2[1][1]
            
        elif (binToHexa(func3[1][1]) == "0x1"): # SLL
            print("  EXECUTING SLL INSTRUCTION with PC ",hex(PC[1][1]))
            if(operand2[1][1] > 0):
                is_branch[2][0] = 0
                ALUResult[2][0] = operand1[1][1] << operand2[1][1]
            else:
                print("  ERROR: THE shift cannot be negative")
                swi_exit()
            
        elif (binToHexa(func3[1][1]) == "0x5"):
            
            if (binToHexa(func7[1][1]) == "0x0"): # SRL
                print("  EXECUTING SRL INSTRUCTION with PC ",hex(PC[1][1]))
                if(operand2[1][1] > 0):
                    is_branch[2][0] = 0
                    ALUResult[2][0] = operand1[1][1] >> operand2[1][1]
                else:
                    print("ERROR: THE shift cannot be negative")
                    swi_exit()
                
            elif (binToHexa(func7[1][1]) == "0x20"): # SRA
                print("  EXECUTING SRA INSTRUCTION with PC ",hex(PC[1][1]))
                if(operand2[1][1] > 0):
                    signed_operand1 = bin(operand1[1][1])
                    operand1 = signed_operand1[1 : ]
                    operand1 = int(operand1, base = 2)
                    ALUResult[2][0] = operand1[1][1] >> operand2[1][1] 
                    is_branch[2][0] = 0   
                    if(signed_operand1[0] == 1):
                        ALUResult = -ALUResult
                        is_branch = 0
                else:
                    print("  ERROR: the shift cannot be negative")
                    swi_exit()
                    
        elif (binToHexa(func3[1][1]) == "0x2"): # SLT
            print("  EXECUTING SLT INSTRUCTION with PC ",hex(PC[1][1]))
            if(rs1[1][1] < rs2[1][1]):
                is_branch[2][0] = 0
                ALUResult[2][0] = 1
            else:
                is_branch[2][0] = 0
                ALUResult[2][0] = 0
                
    elif (opcode[1][1] == "0010011"): # I
        ALU_ins+=1
        if(binToHexa(func3[1][1]) == "0x0"): # ADDI
            print("  EXECUTING ADDI INSTRUCTION with PC ",hex(PC[1][1]))
            is_branch[2][0] = 0
            ALUResult[2][0] = operand1[1][1] + operand2[1][1]
        elif(binToHexa(func3[1][1]) == "0x7"): # ANDI
            print("  EXECUTING ANDI INSTRUCTION with PC ",hex(PC[1][1]))
            is_branch[2][0] = 0
            ALUResult[2][0] = operand1[1][1] ^ operand2[1][1]
        elif(binToHexa(func3[1][1]) == "0x6"): # ORI
            print("  EXECUTING ORI INSTRUCTION with PC ",hex(PC[1][1]))
            is_branch[2][0] = 0
            ALUResult[2][0] = operand1[1][1] | operand2[1][1]

    elif (opcode[1][1] == "0000011"): # I
        Data_transfer_ins+=1
        if(binToHexa(func3[1][1]) == "0x0"): # LB 
            print("  EXECUTING LH INSTRUCTION with PC ",hex(PC[1][1]))
            is_branch[2][0] = 0
            ALUResult[2][0] = operand1[1][1] + operand2[1][1]
        elif(binToHexa(func3[1][1]) == "0x1"):  # LH
            print("  EXECUTING LW INSTRUCTION with PC ",hex(PC[1][1]))
            is_branch[2][0] = 0
            ALUResult[2][0] = operand1[1][1] + operand2[1][1]
        elif(binToHexa(func3[1][1]) == "0x2"): # LW
            print("  EXECUTING LD INSTRUCTION with PC ",hex(PC[1][1]))
            is_branch[2][0] = 0
            ALUResult[2][0] = operand1[1][1] + operand2[1][1]

    elif (opcode[1][1] == "0100011"): # S
        Data_transfer_ins+=1
        if(binToHexa(func3[1][1]) == "0x0"):
            print("  EXECUTING SH INSTRUCTION with PC ",hex(PC[1][1]))
            is_branch[2][0] = 0
            ALUResult[2][0] = operand1[1][1] + operand2[1][1]
        elif(binToHexa(func3[1][1]) == "0x1"):
            print("  EXECUTING SW INSTRUCTION with PC ",hex(PC[1][1]))
            is_branch[2][0] = 0
            ALUResult[2][0] = operand1[1][1] + operand2[1][1]
        elif(binToHexa(func3[1][1]) == "0x2"):
            print("  EXECUTING SD INSTRUCTION with PC ",hex(PC[1][1]))
            is_branch[2][0] = 0
            ALUResult[2][0] = operand1[1][1] + operand2[1][1]
            
    elif(opcode[1][1] == "1100011"): # B
        Control_ins+=1
        ALUResult[2][0] = operand1[1][1] - operand2[1][1]
        if(binToHexa(func3[1][1]) == "0x0"):
            print("  EXECUTING BEQ INSTRUCTION with PC ",hex(PC[1][1]))
            if(ALUResult[2][0] == 0):
                is_branch[2][0] = 1
                btb[PC[1][1]]=[True,PC[1][1]+actual_imm(imm[1][1])]
                if(PC[1][0]==PC[1][1]+4):
                    stall[1][1]=True
                    stall[0][1]=True
                    flag=1
                    stall_count+=2
                    stall_control+=2
                    Control_haz+=1
                    branch_miss+=1
                    pc=PC[1][1]+actual_imm(imm[1][1])
                    print("Control Hazard Detected")
            else:
                if(PC[1][0]!=PC[1][1]+4):
                    stall[1][1]=True
                    stall[0][1]=True
                    pc=PC[1][1]+4
                    flag=1
                    stall_count+=2
                    stall_control+=2
                    Control_haz+=1
                    branch_miss+=1
                    print("Control Hazard Detected")
                is_branch[2][0] = 0

        elif(binToHexa(func3[1][1]) == "0x1"):
            print("  EXECUTING BNE INSTRUCTION with PC ",hex(PC[1][1]))
            if(ALUResult[2][0] != 0):
                is_branch[2][0] = 1
                btb[PC[1][1]]=[True,PC[1][1]+actual_imm(imm[1][1])]
                if(PC[1][0]==PC[1][1]+4):
                    stall[1][1]=True
                    stall[0][1]=True
                    flag=1
                    stall_count+=2
                    stall_control+=2
                    Control_haz+=1
                    branch_miss+=1
                    pc=PC[1][1]+actual_imm(imm[1][1])
                    print("Control Hazard Detected")
            else:
                if(PC[1][0]!=PC[1][1]+4):
                    stall[1][1]=True
                    stall[0][1]=True
                    pc=PC[1][1]+4
                    flag=1
                    stall_count+=2
                    stall_control+=2
                    Control_haz+=1
                    branch_miss+=1
                    print("Control Hazard Detected")
                is_branch[2][0] = 0
        elif(binToHexa(func3[1][1]) == "0x4"):
            print("  EXECUTING BLT INSTRUCTION with PC ",hex(PC[1][1]))
            if(ALUResult[2][0] < 0):
                is_branch[2][0] = 1
                btb[PC[1][1]]=[True,PC[1][1]+actual_imm(imm[1][1])]
                if(PC[1][0]==PC[1][1]+4):
                    stall[1][1]=True
                    stall[0][1]=True
                    flag=1
                    stall_count+=2
                    stall_control+=2
                    Control_haz+=1
                    branch_miss+=1
                    print("Control Hazard Detected")
                    pc=PC[1][1]+actual_imm(imm[1][1])
            else:
                if(PC[1][0]!=PC[1][1]+4):
                    stall[1][1]=True
                    stall[0][1]=True
                    flag=1
                    stall_count+=2
                    stall_control+=2
                    Control_haz+=1
                    branch_miss+=1
                    print("Control Hazard Detected")
                    pc=PC[1][1]+4
                is_branch[2][0] = 0
        elif(binToHexa(func3[1][1]) == "0x5"):
            print("  EXECUTING BGE INSTRUCTION with PC ",hex(PC[1][1]))
            if(ALUResult[2][0] >= 0):
                is_branch[2][0] = 1
                btb[PC[1][1]]=[True,PC[1][1]+actual_imm(imm[1][1])]
                if(PC[1][0]==PC[1][1]+4):
                    stall[1][1]=True
                    stall[0][1]=True
                    flag=1
                    stall_count+=2
                    stall_control+=2
                    Control_haz+=1
                    branch_miss+=1
                    print("Control Hazard Detected")
                    pc=PC[1][1]+actual_imm(imm[1][1])
            else:
                if(PC[1][0]!=PC[1][1]+4):
                    stall[1][1]=True
                    stall[0][1]=True
                    pc=PC[1][1]+4
                    flag=1
                    stall_count+=2
                    stall_control+=2
                    Control_haz+=1
                    branch_miss+=1
                    print("Control Hazard Detected")
                is_branch[2][0] = 0
                
    elif(opcode[1][1] == "0110111"): # U
        print("  EXECUTING LUI INSTRUCTION with PC ",hex(PC[1][1]))
        is_branch[2][0] = 0
        ALUResult[2][0] = operand2[1][1] << 12
        
    elif(opcode[1][1] =="0010111"): # U
        print("  EXECUTING AUIPC INSTRUCTION with PC ",hex(PC[1][1]))
        is_branch[2][0] = 0
        ALUResult[2][0] = PC[1][1] + (operand2[1][1] << 12)
        
    elif (opcode[1][1] == "1101111") : # J
        Control_ins+=1
        print("  EXECUTING JAL INSTRUCTION with PC ",hex(PC[1][1]))
        ALUResult[2][0] = 0
        is_branch[2][0] = 1
        result_select[2][0] = 1 # If result select is 1 the Pc + 4 will go to rd
        btb[PC[1][1]]=[True,PC[1][1]+actual_imm(imm[1][1])]
        if(PC[1][0]==PC[1][1]+4):
            stall[1][1]=True
            stall[0][1]=True
            flag=1
            stall_count+=2
            stall_control+=2
            Control_haz+=1
            branch_miss+=1
            print("Control Hazard Detected")
            pc=PC[1][1]+actual_imm(imm[1][1])
        
    elif (opcode[1][1] == "1100111") : # I
        Control_ins+=1
        print("  EXECUTING JALR INSTRUCTION with PC ",hex(PC[1][1]))
        ALUResult[2][0] = operand1[1][1] + operand2[1][1]
        is_branch[2][0] = 2                   #next PC WILL BE ALU RESULT
        btb[PC[1][1]]=[True,ALUResult[2][0]]
        if(PC[1][0]==PC[1][1]+4):
            stall[1][1]=True
            stall[0][1]=True
            flag=1
            stall_control+=2
            Control_haz+=1
            branch_miss+=1
            print("Control Hazard Detected")
            pc=ALUResult[2][0]
        result_select[2][0] = 1               # If result select is 1 the Pc + 4 will go to rd

    instruction_word[1][1] = instruction_word[1][0] 
    ALUResult[1][1] = ALUResult[1][0] 
    opcode[1][1] = opcode[1][0] 
    rd[1][1] =  rd[1][0] 
    rs1[1][1] = rs1[1][0] 
    rs2[1][1] = rs2[1][0] 
    func3[1][1] = func3[1][0] 
    func7[1][1] = func7[1][0] 
    is_branch[1][1] = is_branch[1][0] 
    result_select[1][1] = result_select[1][0] 
    Branch_Target_Select[1][1] = Branch_Target_Select[1][0] 
    RF_Write[1][1] = RF_Write[1][0] 
    value[1][1] = value[1][0] 
    operand1[1][1] = operand1[1][0]  
    operand2[1][1] = operand2[1][0]  
    imm[1][1] = imm[1][0]
    if(flag==0):
        stall[1][1] = stall[1][0]
    PC [1][1] = PC [1][0] 
            
def ma(): 

    import memory as mem 
    
    global instruction_word 
    global ALUResult 
    global opcode 
    global rd 
    global rs1 
    global rs2 
    global func3 
    global func7 
    global imm 
    global is_branch 
    global result_select 
    global Branch_Target_Select 
    global RF_Write 
    global value 
    global count
    global operand1  
    global operand2  
    global clock  
    global Exit4
    global PC 
    global stall_left

    if(stall[2][1]):
        instruction_word[2][1] = instruction_word[2][0] 
        ALUResult[2][1] = ALUResult[2][0] 
        opcode[2][1] = opcode[2][0] 
        rd[2][1] =  rd[2][0] 
        rs1[2][1] = rs1[2][0] 
        rs2[2][1] = rs2[2][0] 
        func3[2][1] = func3[2][0] 
        func7[2][1] = func7[2][0] 
        is_branch[2][1] = is_branch[2][0] 
        result_select[2][1] = result_select[2][0] 
        Branch_Target_Select[2][1] = Branch_Target_Select[2][0] 
        RF_Write[2][1] = RF_Write[2][0] 
        value[2][1] = value[2][0] 
        operand1[2][1] = operand1[2][0]  
        operand2[2][1] = operand2[2][0]   
        stall[2][1] = stall[2][0]
        PC [2][1] = PC [2][0] 
        imm[2][1] = imm[2][0]

        stall[3][0]=True
        print("  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------>")
        return

    
    instruction_word[3][0] = instruction_word[2][1] 
    ALUResult[3][0] = ALUResult[2][1] 
    opcode[3][0] = opcode[2][1] 
    rd[3][0] =  rd[2][1] 
    rs1[3][0] = rs1[2][1] 
    rs2[3][0] = rs2[2][1] 
    func3[3][0] = func3[2][1] 
    func7[3][0] = func7[2][1] 
    is_branch[3][0] = is_branch[2][1] 
    result_select[3][0] = result_select[2][1] 
    Branch_Target_Select[3][0] = Branch_Target_Select[2][1] 
    RF_Write[3][0] = RF_Write[2][1] 
    value[3][0] = value[2][1] 
    operand1[3][0] = operand1[2][1]  
    operand2[3][0] = operand2[2][1]    
    stall[3][0] = stall[2][1]
    PC [3][0] = PC [2][1] 
    imm[3][0] = imm[2][1]

    if(instruction_word[2][1] == "0xFFFFFFFF"):
        Exit4 = 1
        return

    if (opcode[2][1] == "0000011"): # I
        result_select[3][0] = 2
        if(binToHexa(func3[2][1]) == "0x0"):
            mem.cache_type=2
            temp_value= mem.read(data_cache,hex(ALUResult[2][1]//4),Data_Memory)
            # temp_value = Data_Memory[hex(ALUResult[2][1])]
            value[3][0] = temp_value[7: ]
            
        elif(binToHexa(func3[2][1]) == "0x1"):
            mem.cache_type=2
            temp_value= mem.read(data_cache,hex(ALUResult[2][1]//4),Data_Memory)
            value[3][0] = temp_value[5: ]
            
        elif(binToHexa(func3[2][1]) == "0x2"):
            mem.cache_type=2
            temp_value= mem.read(data_cache,hex(ALUResult[2][1]//4),Data_Memory)
            value[3][0] = temp_value[0: ]
            
        print("  LOADING FROM MEMORY FROM ADDRESS -> ",hex(ALUResult[2][1]), " Instruction -> ", hex(PC[2][1]))
    
    elif (opcode[2][1] == "0100011"): # S
        
        if(binToHexa(func3[2][1]) == "0x0"):
            
            Index_rs2 = int(rs2[2][1], base = 2)
            Int_rs2 = X[Index_rs2]
            Bin_rs2 = bin(Int_rs2)[2 : ].zfill(32)
            Bin_rs2 = Bin_rs2[24 : ].zfill(32)
            value[3][0] = str(binToHexa(Bin_rs2))
            mem.Write(data_cache,hex(ALUResult[2][1]//4),value[3][0],Data_Memory)
            
        elif(binToHexa(func3[2][1]) == "0x1"):
            Index_rs2 = int(rs2[2][1], base = 2)
            Int_rs2 = X[Index_rs2]
            Bin_rs2 = bin(Int_rs2)[2 : ].zfill(32)
            Bin_rs2 = Bin_rs2[16 : ].zfill(32)
            value[3][0] = str(binToHexa(Bin_rs2))
            mem.Write(data_cache,hex(ALUResult[2][1]//4),value[3][0],Data_Memory)
            
        elif(binToHexa(func3[2][1]) == "0x2"):
            Index_rs2 = int(rs2[2][1], base = 2)
            Int_rs2 = X[Index_rs2]
            Bin_rs2 = bin(Int_rs2)[2 : ].zfill(32)
            value[3][0] = str(binToHexa(Bin_rs2))
            mem.Write(data_cache,hex(ALUResult[2][1]//4),value[3][0],Data_Memory)
            
        print("  STORING TO MEMORY AT ADDRESS-> ",hex(ALUResult[2][1]), " Instruction -> ", hex(PC[2][1]))
    
    instruction_word[2][1] = instruction_word[2][0] 
    ALUResult[2][1] = ALUResult[2][0] 
    opcode[2][1] = opcode[2][0] 
    rd[2][1] =  rd[2][0] 
    rs1[2][1] = rs1[2][0] 
    rs2[2][1] = rs2[2][0] 
    func3[2][1] = func3[2][0] 
    func7[2][1] = func7[2][0] 
    is_branch[2][1] = is_branch[2][0] 
    result_select[2][1] = result_select[2][0] 
    Branch_Target_Select[2][1] = Branch_Target_Select[2][0] 
    RF_Write[2][1] = RF_Write[2][0] 
    value[2][1] = value[2][0] 
    operand1[2][1] = operand1[2][0]  
    operand2[2][1] = operand2[2][0]  
    stall[2][1] = stall[2][0]
    PC [2][1] = PC [2][0] 
    imm[2][1] = imm[2][0]

def write_back():
    
    global instruction_word 
    global ALUResult 
    global opcode 
    global rd 
    global rs1 
    global rs2 
    global func3 
    global func7 
    global imm 
    global is_branch 
    global result_select 
    global Branch_Target_Select 
    global RF_Write 
    global value 
    global count
    global operand1  
    global operand2 
    global Exit5 
    global clock  
    global PC 
    global stall_left
    
    if(instruction_word[3][1] == "0xFFFFFFFF"):
        Exit5 = 1
        return

    if(stall[3][1]):
        instruction_word[3][1] = instruction_word[3][0] 
        ALUResult[3][1] = ALUResult[3][0] 
        opcode[3][1] = opcode[3][0] 
        rd[3][1] =  rd[3][0] 
        rs1[3][1] = rs1[3][0] 
        rs2[3][1] = rs2[3][0] 
        func3[3][1] = func3[3][0] 
        func7[3][1] = func7[3][0] 
        is_branch[3][1] = is_branch[3][0] 
        result_select[3][1] = result_select[3][0] 
        Branch_Target_Select[3][1] = Branch_Target_Select[3][0] 
        RF_Write[3][1] = RF_Write[3][0] 
        value[3][1] = value[3][0] 
        operand1[3][1] = operand1[3][0]  
        operand2[3][1] = operand2[3][0]    
        stall[3][1] = stall[3][0]
        PC [3][1] = PC [3][0]
        imm[3][1] = imm[3][0]
        print("  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------>")
        return

    if(RF_Write[3][1] == 1):
        Int_rd = int(rd[3][1], base = 2)
        print("  WRITING BACK TO RESISTER FILE Instruction -> ", hex(PC[3][1]))
        if(result_select[3][1] == 0):
            X[Int_rd] = ALUResult[3][1]
        elif(result_select[3][1] == 1):
            X[Int_rd] = PC[3][1] + 4
        else:
            Int_value = int(value[3][1], base = 16)
            X[Int_rd] = Int_value
    
    instruction_word[3][1] = instruction_word[3][0] 
    ALUResult[3][1] = ALUResult[3][0] 
    opcode[3][1] = opcode[3][0] 
    rd[3][1] =  rd[3][0] 
    rs1[3][1] = rs1[3][0] 
    rs2[3][1] = rs2[3][0] 
    func3[3][1] = func3[3][0] 
    func7[3][1] = func7[3][0] 
    is_branch[3][1] = is_branch[3][0] 
    result_select[3][1] = result_select[3][0] 
    Branch_Target_Select[3][1] = Branch_Target_Select[3][0] 
    RF_Write[3][1] = RF_Write[3][0] 
    value[3][1] = value[3][0] 
    operand1[3][1] = operand1[3][0]  
    operand2[3][1] = operand2[3][0]    
    stall[3][1] = stall[3][0]
    imm[3][1] = imm[3][0]
    PC [3][1] = PC [3][0] 
        
def run_riscvsim():
    
    global instruction_word 
    global ALUResult 
    global opcode 
    global rd 
    global rs1 
    global rs2 
    global func3 
    global func7 
    global imm 
    global is_branch 
    global result_select 
    global Branch_Target_Select 
    global RF_Write 
    global value 
    global count
    global operand1  
    global operand2  
    global clock  
    global PC 
    global Exit1
    global Exit2
    global Exit3
    global Exit4
    global Exit5
    global stall_left


    for i in range(4):
        stall[i][1]=True
    
    while(1):
        print("--------------------------------------------------------------------------------")
        print("  CLOCK CYCLE: ",clock,'\n')
        
        if(Exit1==0):
            fetch()    
        if(Exit2==0):
            decode()
        if(Exit3==0):
            execute()
        if(Exit4==0):
            ma()
        if(Exit5==0):
            write_back()
        if(Exit5==1):
            break
        print('\n')
        clock += 1
        print("INSTRUCTION CACHE--> ")
        mem.make_table(ins_cache)
        print("\n DATA CACHE--> ")
        mem.make_table(data_cache)
    print("--------------------------------------------------------------------------------")
    
    stats()
    mem.stats_cache()