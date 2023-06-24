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

X = [0]*32
MEM = [0]*4000
instruction_word = ""
ALUResult = 0
opcode = 0
rd = ""
rs1 = 0
rs2 = 0
func3 = 0
func7 = 0
imm = 0
is_branch = 0
result_select = 0
Branch_Target_Select = 0
Data_Memory = {}
RF_Write = 0
value = 0
count = 0
Exit = 0

# intermediate datapath and control path signals
operand1 = 0
operand2 = 0
clock = 1

# Program Counter
PC = 0
end = False

# it is used to set the reset values reset all registers and memory content to 0
def reset_proc():
    for i in range(32):
        X[i] = int('0x00000000', 16)
    X[2] = int('0x7FFFFFDC', 16)
    X[3] = int('0x10000000', 16)
    X[10] = int('0x00000001', 16)
    X[11] = int('0x7FFFFFDC', 16)
    for i in range(4000):
        MEM[i] = '00'
    print("REGISTER FILE AND INSTRUCTION MEMORY HAS BEEN RESETTED")

def write_word(address,hex_instruction):
    
    hex_instruction = hex_instruction[2:]    
    a = hex_instruction[0 : 2]
    b = hex_instruction[2 : 4]
    c = hex_instruction[4 : 6]
    d = hex_instruction[6 : 8]
    int_address = int(address[2:], base = 16)
    MEM[int_address] = a
    MEM[int_address + 1] = b
    MEM[int_address + 2] = c
    MEM[int_address + 3] = d

# load_program_memory reads the input memory, and populates the instruction memory
def load_program_memory(file_name):
    
    global count
    fp = open(file_name,'r')
    for words in fp:
        tmp = words.split()
        if(tmp == []): return
        address, instruction = tmp[0], tmp[1]
        # print(address, instruction)
        write_word(address, instruction)
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
        output.append(address+" -----> "+data+"\n")
    fp.writelines(output)
    fp.close()
    print("WRITTEN TO DATA MEMORY")

    fp = open("reg_out.mc", "w")
    out_tmp = []
    for i in range(32):
        out_tmp.append('x' + str(i) + ' -----> ' + str(X[i]) + '\n')
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

def actual_imm(imm):
    
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
    
    if(imm[0] == '1'):
        s = findTwoscomplement(imm)
        return (-1) * (int(s, base = 2))
    else:
        return int(imm[1:], base = 2)
    
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
    global Exit 
    
    is_branch = 0
    result_select = 0
    Branch_Target_Select = 0
    RF_Write = 0
    result_select = 0
    
    instruction_word = '0x' + MEM[PC] + MEM[PC + 1]+ MEM[PC + 2] + MEM[PC + 3]
    if(instruction_word == "0xFFFFFFFF"):
        Exit = 1
        return
    print('  FETCH STAGE: INSTRUCTION - '+ instruction_word + ' From address - '+ hex(PC))

def decode():

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
    
    instruction_word = instruction_word[2:]
    int_value = int(instruction_word, base = 16)
    code = bin(int_value)[2 : ].zfill(32)
    # print("ENCODED INSTRUCTION", code)
    code = code[::-1]
    opcode = code[6 :: -1]
    if( opcode == "0110011"): # R
        rd = code[11 : 6 : -1]
        func3 = code[14 : 11 : -1]
        rs1 = code[19 : 14 : -1]
        rs2 = code[24 : 19 : -1]
        func7 = code[31 : 24 : -1]
        operand1 = X[int(rs1, base = 2)]
        operand2 = X[int(rs2, base = 2)]
        RF_Write = 1
        print('  DECODE STAGE: INSTRUCTION - '+ code + " is of type R ")
               
    elif (opcode == "0010011") : # I
        rd = code[11 : 6 : -1]
        func3 = code[14 : 11 : -1]
        rs1 = code[19 : 14 : -1]
        imm = code[31 : 19 : -1]
        operand1 = X[int(rs1, base = 2)]
        operand2 = actual_imm(imm)
        RF_Write = 1
        print('  DECODE STAGE: INSTRUCTION - '+ code + " is of type I ")
        
    elif (opcode == "0000011" or opcode == "1100111") : # I
        rd = code[11 : 6 : -1]
        func3 = code[14 : 11 : -1]
        rs1 = code[19 : 14 : -1]
        imm = code[31 : 19 : -1]
        operand1 = X[int(rs1, base = 2)]
        operand2 = actual_imm(imm)
        RF_Write = 1
        print('  DECODE STAGE: INSTRUCTION - '+ code + " is of type I ")
        
    elif (opcode == "0100011") : # S
        imm2 = code[11 : 6 : -1]
        func3 = code[14 : 11 : -1]
        rs1 = code[19 : 14 : -1]
        rs2 = code[24 : 19 : -1]
        imm1 = code[31 : 24 : -1]
        imm = imm1 + imm2
        operand1 = X[int(rs1, base = 2)]
        operand2 = actual_imm(imm)
        RF_Write = 0
        print('  DECODE STAGE: INSTRUCTION - '+ code + " is of type S ")
        
    elif (opcode == "1100011") : # B
        imm2 = code[11 : 6 : -1]
        func3 = code[14 : 11 : -1]
        rs1 = code[19 : 14 : -1]
        rs2 = code[24 : 19 : -1]
        imm1 = code[31 : 24 : -1]
        imm = imm1[0] + imm2[-1] + imm1[1 : ] + imm2[0 : 4] + "0"
        operand1 = X[int(rs1, base = 2)]
        operand2 = X[int(rs2, base = 2)]
        RF_Write = 0
        print('  DECODE STAGE: INSTRUCTION - '+ code + " is of type B ")
    
    elif (opcode == "1101111") : # J
        rd = code[11 : 6 : -1]
        imm1 = code[31 : 11 : -1]
        imm = imm1[0] + imm1[12 : ] + imm1[11] + imm1[1 : 11] + "0" 
        operand1 = 0
        operand2 = 0
        RF_Write = 1
        print('  DECODE STAGE: INSTRUCTION - '+ code + " is of type J ")
        
    elif (opcode == "0110111") : # U
        rd = code[11 : 6 : -1]
        imm = code[31 : 11 : -1]
        operand1 = 0
        operand2 = actual_imm(imm)
        RF_Write = 1
        print('  DECODE STAGE: INSTRUCTION - '+ code + " is of type U ")
        
    else:
        print("  ERROR : instruction not found")
        swi_exit()
        
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
    global PC 
    
    if(opcode == "0110011"): # R
        
        if(binToHexa(func3) == "0x0"):
            if (binToHexa(func7) == "0x0"): # ADD
                print("  EXECUTING ADD INSTRUCTION")
                is_branch = 0
                ALUResult = operand1 + operand2
                # print(" ",ALUResult)
            elif (binToHexa(func7) == "0x20"): # SUB
                print("  EXECUTING SUB INSTRUCTION")
                is_branch = 0
                ALUResult = operand1 - operand2
                
        elif (binToHexa(func3) == "0x4"): # XOR
            print("  EXECUTING XOR INSTRUCTION")
            is_branch = 0
            ALUResult = operand1 ^ operand2
            
        elif (binToHexa(func3) == "0x6"): # OR
            print("  EXECUTING OR INSTRUCTION")
            is_branch = 0
            ALUResult = operand1 | operand2
            
        elif (binToHexa(func3) == "0x7"): # AND
            print("  EXECUTING AND INSTRUCTION")
            is_branch = 0
            ALUResult = operand1 & operand2
            
        elif (binToHexa(func3) == "0x1"): # SLL
            print("  EXECUTING SLL INSTRUCTION")
            if(operand2 > 0):
                is_branch = 0
                ALUResult = operand1 << operand2
            else:
                print("  ERROR: THE shift cannot be negative")
                swi_exit()
            
        elif (binToHexa(func3) == "0x5"):
            
            if (binToHexa(func7) == "0x0"): # SRL
                print("  EXECUTING SRL INSTRUCTION")
                if(operand2 > 0):
                    is_branch = 0
                    ALUResult = operand1 >> operand2
                else:
                    print("ERROR: THE shift cannot be negative")
                    swi_exit()
                
            elif (binToHexa(func7) == "0x20"): # SRA
                print("  EXECUTING SRA INSTRUCTION")
                if(operand2 > 0):
                    signed_operand1 = bin(operand1)
                    operand1 = signed_operand1[1 : ]
                    operand1 = int(operand1, base = 2)
                    ALUResult = operand1 >> operand2 
                    is_branch = 0   
                    if(signed_operand1[0] == 1):
                        ALUResult = -ALUResult
                        is_branch = 0
                else:
                    print("  ERROR: the shift cannot be negative")
                    swi_exit()
                    
        elif (binToHexa(func3) == "0x2"): # SLT
            print("  EXECUTING SLT INSTRUCTION")
            if(rs1 < rs2):
                is_branch = 0
                ALUResult = 1
            else:
                is_branch = 0
                ALUResult = 0
                
    elif (opcode == "0010011"): # I
        if(binToHexa(func3) == "0x0"): # ADDI
            print("  EXECUTING ADDI INSTRUCTION")
            is_branch = 0
            ALUResult = operand1 + operand2
        elif(binToHexa(func3) == "0x7"): # ANDI
            print("  EXECUTING ANDI INSTRUCTION")
            is_branch = 0
            ALUResult = operand1 ^ operand2
        elif(binToHexa(func3) == "0x6"): # ORI
            print("  EXECUTING ORI INSTRUCTION")
            is_branch = 0
            ALUResult = operand1 | operand2

    elif (opcode == "0000011"): # I
        if(binToHexa(func3) == "0x0"): # LB 
            print("  EXECUTING LH INSTRUCTION")
            is_branch = 0
            ALUResult = operand1 + operand2
        elif(binToHexa(func3) == "0x1"):  # LH
            print("  EXECUTING LW INSTRUCTION")
            is_branch = 0
            ALUResult = operand1 + operand2
        elif(binToHexa(func3) == "0x2"): # LW
            print("  EXECUTING LD INSTRUCTION")
            is_branch = 0
            ALUResult = operand1 + operand2

    elif (opcode == "0100011"): # S
        if(binToHexa(func3) == "0x0"):
            print("  EXECUTING SH INSTRUCTION")
            is_branch = 0
            ALUResult = operand1 + operand2
        elif(binToHexa(func3) == "0x1"):
            print("  EXECUTING SW INSTRUCTION")
            is_branch = 0
            ALUResult = operand1 + operand2
        elif(binToHexa(func3) == "0x2"):
            print("  EXECUTING SD INSTRUCTION")
            is_branch = 0
            ALUResult = operand1 + operand2
            
    elif(opcode == "1100011"): # B
        ALUResult = operand1 - operand2
        if(binToHexa(func3) == "0x0"):
            print("  EXECUTING BEQ INSTRUCTION")
            if(ALUResult == 0):
                is_branch = 1
            else:
                is_branch = 0
        elif(binToHexa(func3) == "0x1"):
            print("  EXECUTING BNE INSTRUCTION")
            if(ALUResult != 0):
                is_branch = 1
            else:
                is_branch = 0
        elif(binToHexa(func3) == "0x4"):
            print("  EXECUTING BLT INSTRUCTION")
            if(ALUResult < 0):
                is_branch = 1
            else:
                is_branch = 0
        elif(binToHexa(func3) == "0x5"):
            print("  EXECUTING BGE INSTRUCTION")
            if(ALUResult >= 0):
                is_branch = 1
            else:
                is_branch = 0
                    
    elif(opcode == "0110111"): # U
        print("  EXECUTING LUI INSTRUCTION")
        is_branch = 0
        ALUResult = operand2 << 12
        
    elif(opcode =="0010111"): # U
        print("  EXECUTING AUIPC INSTRUCTION")
        is_branch = 0
        ALUResult = PC + (operand2 << 12)
        
    elif (opcode == "1101111") : # J
        print("  EXECUTING JAL INSTRUCTION")
        ALUResult = 0
        is_branch = 1
        result_select = 1 # If result select is 1 the Pc + 4 will go to rd
        
    elif (opcode == "1100111") : # I
        print("  EXECUTING JALR INSTRUCTION")
        ALUResult = operand1 + operand2
        is_branch = 2                   #next PC WILL BE ALU RESULT
        result_select = 1               # If result select is 1 the Pc + 4 will go to rd
            
def mem():  
    
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
    global o1
    global o3
    global o4
    global o2
    global o5
    
    if (opcode == "0000011"): # I
        result_select = 2
        if(binToHexa(func3) == "0x0"):
            value = Data_Memory[hex(ALUResult)]
            value = value[7: ]
            
        elif(binToHexa(func3) == "0x1"):
            value = Data_Memory[hex(ALUResult)]
            value = value[5: ]
            
        elif(binToHexa(func3) == "0x2"):
            value = Data_Memory[hex(ALUResult)]
            value = value[0: ]
        print("  LOADING FROM MEMORY FROM ADDRESS-> ",hex(ALUResult))

    
    elif (opcode == "0100011"): # S
        
        if(binToHexa(func3) == "0x0"):
            
            Index_rs2 = int(rs2, base = 2)
            Int_rs2 = X[Index_rs2]
            Bin_rs2 = bin(Int_rs2)[2 : ].zfill(32)
            Bin_rs2 = Bin_rs2[24 : ].zfill(32)
            value = str(binToHexa(Bin_rs2))
            
            Data_Memory[hex(ALUResult)] = value
        elif(binToHexa(func3) == "0x1"):
            Index_rs2 = int(rs2, base = 2)
            Int_rs2 = X[Index_rs2]
            Bin_rs2 = bin(Int_rs2)[2 : ].zfill(32)
            Bin_rs2 = Bin_rs2[16 : ].zfill(32)
            value = str(binToHexa(Bin_rs2))
            Data_Memory[hex(ALUResult)] = value
            
        elif(binToHexa(func3) == "0x2"):
            Index_rs2 = int(rs2, base = 2)
            Int_rs2 = X[Index_rs2]
            Bin_rs2 = bin(Int_rs2)[2 : ].zfill(32)
            value = str(binToHexa(Bin_rs2))
            Data_Memory[hex(ALUResult)] = value
        print("  STORING TO MEMORY AT ADDRESS-> ",hex(ALUResult))

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
    global clock  
    global PC 
    global o1
    global o3
    global o4
    global o2
    global o5
    
    Int_rd = int(rd, base = 2)
    if(RF_Write == 1):
        print("  WRITING BACK TO RESISTER FILE")
        if(result_select == 0):
            X[Int_rd] = ALUResult
        elif(result_select == 1):
            X[Int_rd] = PC + 4
        else:
            Int_value = int(value, base = 16)
            X[Int_rd] = Int_value    
        
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
    global Exit
    global o1
    global o3
    global o4
    global o2
    global o5

    while(1):
        print("--------------------------------------------------------------------------------")
        print("  CLOCK CYCLE: ",clock,'\n')
        fetch()
        if(Exit == 1): return
        decode()
        execute()
        mem()
        write_back()
        PC_Update()
        print('\n')
        clock += 1
    print("--------------------------------------------------------------------------------")
