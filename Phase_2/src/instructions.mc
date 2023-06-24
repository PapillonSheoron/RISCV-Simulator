REGISTER FILE AND INSTRUCTION MEMORY HAS BEEN RESETTED
INPUT FILE LOADED


--------------------------------------------------------------------------------
  CLOCK CYCLE:  0 

  FETCH STAGE: INSTRUCTION - 0x00500193 From address - 0x0
  DECODE STAGE WHEN THERE IS A STALL ---------------------------------------->
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
--------------------------------------------------------------------------------
  CLOCK CYCLE:  1 

  FETCH STAGE: INSTRUCTION - 0x100013B7 From address - 0x4
  DECODE STAGE: INSTRUCTION with PC-  0x0  is of type I 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
--------------------------------------------------------------------------------
  CLOCK CYCLE:  2 

  FETCH STAGE: INSTRUCTION - 0x10001437 From address - 0x8
  DECODE STAGE: INSTRUCTION with PC-  0x4  is of type U 
  EXECUTING ADDI INSTRUCTION with PC:  0x0
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
--------------------------------------------------------------------------------
  CLOCK CYCLE:  3 

  FETCH STAGE: INSTRUCTION - 0x00000233 From address - 0xc
  DECODE STAGE: INSTRUCTION with PC-  0x8  is of type U 
  EXECUTING LUI INSTRUCTION with PC:  0x4
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
--------------------------------------------------------------------------------
  CLOCK CYCLE:  4 

  FETCH STAGE: INSTRUCTION - 0x000004B3 From address - 0x10
  DECODE STAGE: INSTRUCTION with PC-  0xc  is of type R 
  EXECUTING LUI INSTRUCTION with PC:  0x8
  WRITING BACK TO RESISTER FILE Instruction:  0x0
--------------------------------------------------------------------------------
  CLOCK CYCLE:  5 

  FETCH STAGE: INSTRUCTION - 0x000005B3 From address - 0x14
  DECODE STAGE: INSTRUCTION with PC-  0x10  is of type R 
  EXECUTING ADD INSTRUCTION with PC:  0xc
  WRITING BACK TO RESISTER FILE Instruction:  0x4
--------------------------------------------------------------------------------
  CLOCK CYCLE:  6 

  FETCH STAGE: INSTRUCTION - 0x00325C63 From address - 0x18
  DECODE STAGE: INSTRUCTION with PC-  0x14  is of type R 
  EXECUTING ADD INSTRUCTION with PC:  0x10
  WRITING BACK TO RESISTER FILE Instruction:  0x8
--------------------------------------------------------------------------------
  CLOCK CYCLE:  7 

  FETCH STAGE: INSTRUCTION - 0x00120313 From address - 0x1c
  DECODE STAGE: INSTRUCTION with PC-  0x18  is of type B 
  EXECUTING ADD INSTRUCTION with PC:  0x14
  WRITING BACK TO RESISTER FILE Instruction:  0xc
--------------------------------------------------------------------------------
  CLOCK CYCLE:  8 

  FETCH STAGE: INSTRUCTION - 0x0063A023 From address - 0x20
  DECODE STAGE: INSTRUCTION with PC-  0x1c  is of type I 
  EXECUTING BGE INSTRUCTION with PC:  0x18
  WRITING BACK TO RESISTER FILE Instruction:  0x10
--------------------------------------------------------------------------------
  CLOCK CYCLE:  9 

  FETCH STAGE: INSTRUCTION - 0x00438393 From address - 0x24
  DECODE STAGE: INSTRUCTION with PC-  0x20  is of type S 
Data Hazard Detected
  EXECUTING ADDI INSTRUCTION with PC:  0x1c
  WRITING BACK TO RESISTER FILE Instruction:  0x14
--------------------------------------------------------------------------------
  CLOCK CYCLE:  10 

  FETCH STAGE: INSTRUCTION - 0x00438393 From address - 0x24
  DECODE STAGE: INSTRUCTION with PC-  0x20  is of type S 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
--------------------------------------------------------------------------------
  CLOCK CYCLE:  11 

  FETCH STAGE: INSTRUCTION - 0x00438393 From address - 0x24
  DECODE STAGE: INSTRUCTION with PC-  0x20  is of type S 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITING BACK TO RESISTER FILE Instruction:  0x1c
--------------------------------------------------------------------------------
  CLOCK CYCLE:  12 

  FETCH STAGE: INSTRUCTION - 0x00438393 From address - 0x24
  DECODE STAGE: INSTRUCTION with PC-  0x20  is of type S 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
--------------------------------------------------------------------------------
  CLOCK CYCLE:  13 

  FETCH STAGE: INSTRUCTION - 0x00120213 From address - 0x28
  DECODE STAGE: INSTRUCTION with PC-  0x24  is of type I 
  EXECUTING SD INSTRUCTION with PC:  0x20
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
--------------------------------------------------------------------------------
  CLOCK CYCLE:  14 

  FETCH STAGE: INSTRUCTION - 0xFE0006E3 From address - 0x2c
  DECODE STAGE: INSTRUCTION with PC-  0x28  is of type I 
  EXECUTING ADDI INSTRUCTION with PC:  0x24
  STORING TO MEMORY AT ADDRESS->  0x10001000  Instruction:  0x20
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
--------------------------------------------------------------------------------
  CLOCK CYCLE:  15 

  FETCH STAGE: INSTRUCTION - 0x0035DC63 From address - 0x30
  DECODE STAGE: INSTRUCTION with PC-  0x2c  is of type B 
  EXECUTING ADDI INSTRUCTION with PC:  0x28
--------------------------------------------------------------------------------
  CLOCK CYCLE:  16 

  FETCH STAGE: INSTRUCTION - 0x00042503 From address - 0x34
  DECODE STAGE: INSTRUCTION with PC-  0x30  is of type B 
  EXECUTING BEQ INSTRUCTION with PC:  0x2c
Control Hazard Detected
  WRITING BACK TO RESISTER FILE Instruction:  0x24
--------------------------------------------------------------------------------
  CLOCK CYCLE:  17 

  FETCH STAGE: INSTRUCTION - 0x00325C63 From address - 0x18
  DECODE STAGE WHEN THERE IS A STALL ---------------------------------------->
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  WRITING BACK TO RESISTER FILE Instruction:  0x28
--------------------------------------------------------------------------------
  CLOCK CYCLE:  18 

  FETCH STAGE: INSTRUCTION - 0x00120313 From address - 0x1c
  DECODE STAGE: INSTRUCTION with PC-  0x18  is of type B 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
--------------------------------------------------------------------------------
  CLOCK CYCLE:  19 

  FETCH STAGE: INSTRUCTION - 0x0063A023 From address - 0x20
  DECODE STAGE: INSTRUCTION with PC-  0x1c  is of type I 
  EXECUTING BGE INSTRUCTION with PC:  0x18
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
--------------------------------------------------------------------------------
  CLOCK CYCLE:  20 

  FETCH STAGE: INSTRUCTION - 0x00438393 From address - 0x24
  DECODE STAGE: INSTRUCTION with PC-  0x20  is of type S 
Data Hazard Detected
  EXECUTING ADDI INSTRUCTION with PC:  0x1c
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
--------------------------------------------------------------------------------
  CLOCK CYCLE:  21 

  FETCH STAGE: INSTRUCTION - 0x00438393 From address - 0x24
  DECODE STAGE: INSTRUCTION with PC-  0x20  is of type S 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
--------------------------------------------------------------------------------
  CLOCK CYCLE:  22 

  FETCH STAGE: INSTRUCTION - 0x00438393 From address - 0x24
  DECODE STAGE: INSTRUCTION with PC-  0x20  is of type S 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITING BACK TO RESISTER FILE Instruction:  0x1c
--------------------------------------------------------------------------------
  CLOCK CYCLE:  23 

  FETCH STAGE: INSTRUCTION - 0x00438393 From address - 0x24
  DECODE STAGE: INSTRUCTION with PC-  0x20  is of type S 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
--------------------------------------------------------------------------------
  CLOCK CYCLE:  24 

  FETCH STAGE: INSTRUCTION - 0x00120213 From address - 0x28
  DECODE STAGE: INSTRUCTION with PC-  0x24  is of type I 
  EXECUTING SD INSTRUCTION with PC:  0x20
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
--------------------------------------------------------------------------------
  CLOCK CYCLE:  25 

  FETCH STAGE: INSTRUCTION - 0xFE0006E3 From address - 0x2c
BRANCH TABLE BUFFER :    PC    44    ADDRESS:     24
  DECODE STAGE: INSTRUCTION with PC-  0x28  is of type I 
  EXECUTING ADDI INSTRUCTION with PC:  0x24
  STORING TO MEMORY AT ADDRESS->  0x10001004  Instruction:  0x20
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
--------------------------------------------------------------------------------
  CLOCK CYCLE:  26 

  FETCH STAGE: INSTRUCTION - 0x00325C63 From address - 0x18
  DECODE STAGE: INSTRUCTION with PC-  0x2c  is of type B 
  EXECUTING ADDI INSTRUCTION with PC:  0x28
--------------------------------------------------------------------------------
  CLOCK CYCLE:  27 

  FETCH STAGE: INSTRUCTION - 0x00120313 From address - 0x1c
  DECODE STAGE: INSTRUCTION with PC-  0x18  is of type B 
  EXECUTING BEQ INSTRUCTION with PC:  0x2c
  WRITING BACK TO RESISTER FILE Instruction:  0x24
--------------------------------------------------------------------------------
  CLOCK CYCLE:  28 

  FETCH STAGE: INSTRUCTION - 0x0063A023 From address - 0x20
  DECODE STAGE: INSTRUCTION with PC-  0x1c  is of type I 
  EXECUTING BGE INSTRUCTION with PC:  0x18
  WRITING BACK TO RESISTER FILE Instruction:  0x28
--------------------------------------------------------------------------------
  CLOCK CYCLE:  29 

  FETCH STAGE: INSTRUCTION - 0x00438393 From address - 0x24
  DECODE STAGE: INSTRUCTION with PC-  0x20  is of type S 
Data Hazard Detected
  EXECUTING ADDI INSTRUCTION with PC:  0x1c
--------------------------------------------------------------------------------
  CLOCK CYCLE:  30 

  FETCH STAGE: INSTRUCTION - 0x00438393 From address - 0x24
  DECODE STAGE: INSTRUCTION with PC-  0x20  is of type S 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
--------------------------------------------------------------------------------
  CLOCK CYCLE:  31 

  FETCH STAGE: INSTRUCTION - 0x00438393 From address - 0x24
  DECODE STAGE: INSTRUCTION with PC-  0x20  is of type S 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITING BACK TO RESISTER FILE Instruction:  0x1c
--------------------------------------------------------------------------------
  CLOCK CYCLE:  32 

  FETCH STAGE: INSTRUCTION - 0x00438393 From address - 0x24
  DECODE STAGE: INSTRUCTION with PC-  0x20  is of type S 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
--------------------------------------------------------------------------------
  CLOCK CYCLE:  33 

  FETCH STAGE: INSTRUCTION - 0x00120213 From address - 0x28
  DECODE STAGE: INSTRUCTION with PC-  0x24  is of type I 
  EXECUTING SD INSTRUCTION with PC:  0x20
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
--------------------------------------------------------------------------------
  CLOCK CYCLE:  34 

  FETCH STAGE: INSTRUCTION - 0xFE0006E3 From address - 0x2c
BRANCH TABLE BUFFER :    PC    44    ADDRESS:     24
  DECODE STAGE: INSTRUCTION with PC-  0x28  is of type I 
  EXECUTING ADDI INSTRUCTION with PC:  0x24
  STORING TO MEMORY AT ADDRESS->  0x10001008  Instruction:  0x20
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
--------------------------------------------------------------------------------
  CLOCK CYCLE:  35 

  FETCH STAGE: INSTRUCTION - 0x00325C63 From address - 0x18
  DECODE STAGE: INSTRUCTION with PC-  0x2c  is of type B 
  EXECUTING ADDI INSTRUCTION with PC:  0x28
--------------------------------------------------------------------------------
  CLOCK CYCLE:  36 

  FETCH STAGE: INSTRUCTION - 0x00120313 From address - 0x1c
  DECODE STAGE: INSTRUCTION with PC-  0x18  is of type B 
  EXECUTING BEQ INSTRUCTION with PC:  0x2c
  WRITING BACK TO RESISTER FILE Instruction:  0x24
--------------------------------------------------------------------------------
  CLOCK CYCLE:  37 

  FETCH STAGE: INSTRUCTION - 0x0063A023 From address - 0x20
  DECODE STAGE: INSTRUCTION with PC-  0x1c  is of type I 
  EXECUTING BGE INSTRUCTION with PC:  0x18
  WRITING BACK TO RESISTER FILE Instruction:  0x28
--------------------------------------------------------------------------------
  CLOCK CYCLE:  38 

  FETCH STAGE: INSTRUCTION - 0x00438393 From address - 0x24
  DECODE STAGE: INSTRUCTION with PC-  0x20  is of type S 
Data Hazard Detected
  EXECUTING ADDI INSTRUCTION with PC:  0x1c
--------------------------------------------------------------------------------
  CLOCK CYCLE:  39 

  FETCH STAGE: INSTRUCTION - 0x00438393 From address - 0x24
  DECODE STAGE: INSTRUCTION with PC-  0x20  is of type S 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
--------------------------------------------------------------------------------
  CLOCK CYCLE:  40 

  FETCH STAGE: INSTRUCTION - 0x00438393 From address - 0x24
  DECODE STAGE: INSTRUCTION with PC-  0x20  is of type S 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITING BACK TO RESISTER FILE Instruction:  0x1c
--------------------------------------------------------------------------------
  CLOCK CYCLE:  41 

  FETCH STAGE: INSTRUCTION - 0x00438393 From address - 0x24
  DECODE STAGE: INSTRUCTION with PC-  0x20  is of type S 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
--------------------------------------------------------------------------------
  CLOCK CYCLE:  42 

  FETCH STAGE: INSTRUCTION - 0x00120213 From address - 0x28
  DECODE STAGE: INSTRUCTION with PC-  0x24  is of type I 
  EXECUTING SD INSTRUCTION with PC:  0x20
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
--------------------------------------------------------------------------------
  CLOCK CYCLE:  43 

  FETCH STAGE: INSTRUCTION - 0xFE0006E3 From address - 0x2c
BRANCH TABLE BUFFER :    PC    44    ADDRESS:     24
  DECODE STAGE: INSTRUCTION with PC-  0x28  is of type I 
  EXECUTING ADDI INSTRUCTION with PC:  0x24
  STORING TO MEMORY AT ADDRESS->  0x1000100c  Instruction:  0x20
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
--------------------------------------------------------------------------------
  CLOCK CYCLE:  44 

  FETCH STAGE: INSTRUCTION - 0x00325C63 From address - 0x18
  DECODE STAGE: INSTRUCTION with PC-  0x2c  is of type B 
  EXECUTING ADDI INSTRUCTION with PC:  0x28
--------------------------------------------------------------------------------
  CLOCK CYCLE:  45 

  FETCH STAGE: INSTRUCTION - 0x00120313 From address - 0x1c
  DECODE STAGE: INSTRUCTION with PC-  0x18  is of type B 
  EXECUTING BEQ INSTRUCTION with PC:  0x2c
  WRITING BACK TO RESISTER FILE Instruction:  0x24
--------------------------------------------------------------------------------
  CLOCK CYCLE:  46 

  FETCH STAGE: INSTRUCTION - 0x0063A023 From address - 0x20
  DECODE STAGE: INSTRUCTION with PC-  0x1c  is of type I 
  EXECUTING BGE INSTRUCTION with PC:  0x18
  WRITING BACK TO RESISTER FILE Instruction:  0x28
--------------------------------------------------------------------------------
  CLOCK CYCLE:  47 

  FETCH STAGE: INSTRUCTION - 0x00438393 From address - 0x24
  DECODE STAGE: INSTRUCTION with PC-  0x20  is of type S 
Data Hazard Detected
  EXECUTING ADDI INSTRUCTION with PC:  0x1c
--------------------------------------------------------------------------------
  CLOCK CYCLE:  48 

  FETCH STAGE: INSTRUCTION - 0x00438393 From address - 0x24
  DECODE STAGE: INSTRUCTION with PC-  0x20  is of type S 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
--------------------------------------------------------------------------------
  CLOCK CYCLE:  49 

  FETCH STAGE: INSTRUCTION - 0x00438393 From address - 0x24
  DECODE STAGE: INSTRUCTION with PC-  0x20  is of type S 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITING BACK TO RESISTER FILE Instruction:  0x1c
--------------------------------------------------------------------------------
  CLOCK CYCLE:  50 

  FETCH STAGE: INSTRUCTION - 0x00438393 From address - 0x24
  DECODE STAGE: INSTRUCTION with PC-  0x20  is of type S 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
--------------------------------------------------------------------------------
  CLOCK CYCLE:  51 

  FETCH STAGE: INSTRUCTION - 0x00120213 From address - 0x28
  DECODE STAGE: INSTRUCTION with PC-  0x24  is of type I 
  EXECUTING SD INSTRUCTION with PC:  0x20
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
--------------------------------------------------------------------------------
  CLOCK CYCLE:  52 

  FETCH STAGE: INSTRUCTION - 0xFE0006E3 From address - 0x2c
BRANCH TABLE BUFFER :    PC    44    ADDRESS:     24
  DECODE STAGE: INSTRUCTION with PC-  0x28  is of type I 
  EXECUTING ADDI INSTRUCTION with PC:  0x24
  STORING TO MEMORY AT ADDRESS->  0x10001010  Instruction:  0x20
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
--------------------------------------------------------------------------------
  CLOCK CYCLE:  53 

  FETCH STAGE: INSTRUCTION - 0x00325C63 From address - 0x18
  DECODE STAGE: INSTRUCTION with PC-  0x2c  is of type B 
  EXECUTING ADDI INSTRUCTION with PC:  0x28
--------------------------------------------------------------------------------
  CLOCK CYCLE:  54 

  FETCH STAGE: INSTRUCTION - 0x00120313 From address - 0x1c
  DECODE STAGE: INSTRUCTION with PC-  0x18  is of type B 
  EXECUTING BEQ INSTRUCTION with PC:  0x2c
  WRITING BACK TO RESISTER FILE Instruction:  0x24
--------------------------------------------------------------------------------
  CLOCK CYCLE:  55 

  FETCH STAGE: INSTRUCTION - 0x0063A023 From address - 0x20
  DECODE STAGE: INSTRUCTION with PC-  0x1c  is of type I 
  EXECUTING BGE INSTRUCTION with PC:  0x18
Control Hazard Detected
  WRITING BACK TO RESISTER FILE Instruction:  0x28
--------------------------------------------------------------------------------
  CLOCK CYCLE:  56 

  FETCH STAGE: INSTRUCTION - 0x0035DC63 From address - 0x30
  DECODE STAGE WHEN THERE IS A STALL ---------------------------------------->
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
--------------------------------------------------------------------------------
  CLOCK CYCLE:  57 

  FETCH STAGE: INSTRUCTION - 0x00042503 From address - 0x34
  DECODE STAGE: INSTRUCTION with PC-  0x30  is of type B 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
--------------------------------------------------------------------------------
  CLOCK CYCLE:  58 

  FETCH STAGE: INSTRUCTION - 0x00A484B3 From address - 0x38
  DECODE STAGE: INSTRUCTION with PC-  0x34  is of type I 
  EXECUTING BGE INSTRUCTION with PC:  0x30
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
--------------------------------------------------------------------------------
  CLOCK CYCLE:  59 

  FETCH STAGE: INSTRUCTION - 0x00440413 From address - 0x3c
  DECODE STAGE: INSTRUCTION with PC-  0x38  is of type R 
Data Hazard Detected
  EXECUTING LD INSTRUCTION with PC:  0x34
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
--------------------------------------------------------------------------------
  CLOCK CYCLE:  60 

  FETCH STAGE: INSTRUCTION - 0x00440413 From address - 0x3c
  DECODE STAGE: INSTRUCTION with PC-  0x38  is of type R 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  LOADING FROM MEMORY FROM ADDRESS->  0x10001000  Instruction:  0x34
--------------------------------------------------------------------------------
  CLOCK CYCLE:  61 

  FETCH STAGE: INSTRUCTION - 0x00440413 From address - 0x3c
  DECODE STAGE: INSTRUCTION with PC-  0x38  is of type R 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITING BACK TO RESISTER FILE Instruction:  0x34
--------------------------------------------------------------------------------
  CLOCK CYCLE:  62 

  FETCH STAGE: INSTRUCTION - 0x00440413 From address - 0x3c
  DECODE STAGE: INSTRUCTION with PC-  0x38  is of type R 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
--------------------------------------------------------------------------------
  CLOCK CYCLE:  63 

  FETCH STAGE: INSTRUCTION - 0x00158593 From address - 0x40
  DECODE STAGE: INSTRUCTION with PC-  0x3c  is of type I 
  EXECUTING ADD INSTRUCTION with PC:  0x38
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
--------------------------------------------------------------------------------
  CLOCK CYCLE:  64 

  FETCH STAGE: INSTRUCTION - 0xFE0006E3 From address - 0x44
  DECODE STAGE: INSTRUCTION with PC-  0x40  is of type I 
  EXECUTING ADDI INSTRUCTION with PC:  0x3c
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
--------------------------------------------------------------------------------
  CLOCK CYCLE:  65 

  FETCH STAGE: INSTRUCTION - 0x00000A13 From address - 0x48
  DECODE STAGE: INSTRUCTION with PC-  0x44  is of type B 
  EXECUTING ADDI INSTRUCTION with PC:  0x40
  WRITING BACK TO RESISTER FILE Instruction:  0x38
--------------------------------------------------------------------------------
  CLOCK CYCLE:  66 

  FETCH STAGE: INSTRUCTION - 0x00000A93 From address - 0x4c
  DECODE STAGE: INSTRUCTION with PC-  0x48  is of type I 
  EXECUTING BEQ INSTRUCTION with PC:  0x44
Control Hazard Detected
  WRITING BACK TO RESISTER FILE Instruction:  0x3c
--------------------------------------------------------------------------------
  CLOCK CYCLE:  67 

  FETCH STAGE: INSTRUCTION - 0x0035DC63 From address - 0x30
  DECODE STAGE WHEN THERE IS A STALL ---------------------------------------->
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  WRITING BACK TO RESISTER FILE Instruction:  0x40
--------------------------------------------------------------------------------
  CLOCK CYCLE:  68 

  FETCH STAGE: INSTRUCTION - 0x00042503 From address - 0x34
  DECODE STAGE: INSTRUCTION with PC-  0x30  is of type B 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
--------------------------------------------------------------------------------
  CLOCK CYCLE:  69 

  FETCH STAGE: INSTRUCTION - 0x00A484B3 From address - 0x38
  DECODE STAGE: INSTRUCTION with PC-  0x34  is of type I 
  EXECUTING BGE INSTRUCTION with PC:  0x30
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
--------------------------------------------------------------------------------
  CLOCK CYCLE:  70 

  FETCH STAGE: INSTRUCTION - 0x00440413 From address - 0x3c
  DECODE STAGE: INSTRUCTION with PC-  0x38  is of type R 
Data Hazard Detected
  EXECUTING LD INSTRUCTION with PC:  0x34
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
--------------------------------------------------------------------------------
  CLOCK CYCLE:  71 

  FETCH STAGE: INSTRUCTION - 0x00440413 From address - 0x3c
  DECODE STAGE: INSTRUCTION with PC-  0x38  is of type R 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  LOADING FROM MEMORY FROM ADDRESS->  0x10001004  Instruction:  0x34
--------------------------------------------------------------------------------
  CLOCK CYCLE:  72 

  FETCH STAGE: INSTRUCTION - 0x00440413 From address - 0x3c
  DECODE STAGE: INSTRUCTION with PC-  0x38  is of type R 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITING BACK TO RESISTER FILE Instruction:  0x34
--------------------------------------------------------------------------------
  CLOCK CYCLE:  73 

  FETCH STAGE: INSTRUCTION - 0x00440413 From address - 0x3c
  DECODE STAGE: INSTRUCTION with PC-  0x38  is of type R 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
--------------------------------------------------------------------------------
  CLOCK CYCLE:  74 

  FETCH STAGE: INSTRUCTION - 0x00158593 From address - 0x40
  DECODE STAGE: INSTRUCTION with PC-  0x3c  is of type I 
  EXECUTING ADD INSTRUCTION with PC:  0x38
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
--------------------------------------------------------------------------------
  CLOCK CYCLE:  75 

  FETCH STAGE: INSTRUCTION - 0xFE0006E3 From address - 0x44
BRANCH TABLE BUFFER :    PC    68    ADDRESS:     48
  DECODE STAGE: INSTRUCTION with PC-  0x40  is of type I 
  EXECUTING ADDI INSTRUCTION with PC:  0x3c
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
--------------------------------------------------------------------------------
  CLOCK CYCLE:  76 

  FETCH STAGE: INSTRUCTION - 0x0035DC63 From address - 0x30
  DECODE STAGE: INSTRUCTION with PC-  0x44  is of type B 
  EXECUTING ADDI INSTRUCTION with PC:  0x40
  WRITING BACK TO RESISTER FILE Instruction:  0x38
--------------------------------------------------------------------------------
  CLOCK CYCLE:  77 

  FETCH STAGE: INSTRUCTION - 0x00042503 From address - 0x34
  DECODE STAGE: INSTRUCTION with PC-  0x30  is of type B 
  EXECUTING BEQ INSTRUCTION with PC:  0x44
  WRITING BACK TO RESISTER FILE Instruction:  0x3c
--------------------------------------------------------------------------------
  CLOCK CYCLE:  78 

  FETCH STAGE: INSTRUCTION - 0x00A484B3 From address - 0x38
  DECODE STAGE: INSTRUCTION with PC-  0x34  is of type I 
  EXECUTING BGE INSTRUCTION with PC:  0x30
  WRITING BACK TO RESISTER FILE Instruction:  0x40
--------------------------------------------------------------------------------
  CLOCK CYCLE:  79 

  FETCH STAGE: INSTRUCTION - 0x00440413 From address - 0x3c
  DECODE STAGE: INSTRUCTION with PC-  0x38  is of type R 
Data Hazard Detected
  EXECUTING LD INSTRUCTION with PC:  0x34
--------------------------------------------------------------------------------
  CLOCK CYCLE:  80 

  FETCH STAGE: INSTRUCTION - 0x00440413 From address - 0x3c
  DECODE STAGE: INSTRUCTION with PC-  0x38  is of type R 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  LOADING FROM MEMORY FROM ADDRESS->  0x10001008  Instruction:  0x34
--------------------------------------------------------------------------------
  CLOCK CYCLE:  81 

  FETCH STAGE: INSTRUCTION - 0x00440413 From address - 0x3c
  DECODE STAGE: INSTRUCTION with PC-  0x38  is of type R 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITING BACK TO RESISTER FILE Instruction:  0x34
--------------------------------------------------------------------------------
  CLOCK CYCLE:  82 

  FETCH STAGE: INSTRUCTION - 0x00440413 From address - 0x3c
  DECODE STAGE: INSTRUCTION with PC-  0x38  is of type R 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
--------------------------------------------------------------------------------
  CLOCK CYCLE:  83 

  FETCH STAGE: INSTRUCTION - 0x00158593 From address - 0x40
  DECODE STAGE: INSTRUCTION with PC-  0x3c  is of type I 
  EXECUTING ADD INSTRUCTION with PC:  0x38
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
--------------------------------------------------------------------------------
  CLOCK CYCLE:  84 

  FETCH STAGE: INSTRUCTION - 0xFE0006E3 From address - 0x44
BRANCH TABLE BUFFER :    PC    68    ADDRESS:     48
  DECODE STAGE: INSTRUCTION with PC-  0x40  is of type I 
  EXECUTING ADDI INSTRUCTION with PC:  0x3c
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
--------------------------------------------------------------------------------
  CLOCK CYCLE:  85 

  FETCH STAGE: INSTRUCTION - 0x0035DC63 From address - 0x30
  DECODE STAGE: INSTRUCTION with PC-  0x44  is of type B 
  EXECUTING ADDI INSTRUCTION with PC:  0x40
  WRITING BACK TO RESISTER FILE Instruction:  0x38
--------------------------------------------------------------------------------
  CLOCK CYCLE:  86 

  FETCH STAGE: INSTRUCTION - 0x00042503 From address - 0x34
  DECODE STAGE: INSTRUCTION with PC-  0x30  is of type B 
  EXECUTING BEQ INSTRUCTION with PC:  0x44
  WRITING BACK TO RESISTER FILE Instruction:  0x3c
--------------------------------------------------------------------------------
  CLOCK CYCLE:  87 

  FETCH STAGE: INSTRUCTION - 0x00A484B3 From address - 0x38
  DECODE STAGE: INSTRUCTION with PC-  0x34  is of type I 
  EXECUTING BGE INSTRUCTION with PC:  0x30
  WRITING BACK TO RESISTER FILE Instruction:  0x40
--------------------------------------------------------------------------------
  CLOCK CYCLE:  88 

  FETCH STAGE: INSTRUCTION - 0x00440413 From address - 0x3c
  DECODE STAGE: INSTRUCTION with PC-  0x38  is of type R 
Data Hazard Detected
  EXECUTING LD INSTRUCTION with PC:  0x34
--------------------------------------------------------------------------------
  CLOCK CYCLE:  89 

  FETCH STAGE: INSTRUCTION - 0x00440413 From address - 0x3c
  DECODE STAGE: INSTRUCTION with PC-  0x38  is of type R 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  LOADING FROM MEMORY FROM ADDRESS->  0x1000100c  Instruction:  0x34
--------------------------------------------------------------------------------
  CLOCK CYCLE:  90 

  FETCH STAGE: INSTRUCTION - 0x00440413 From address - 0x3c
  DECODE STAGE: INSTRUCTION with PC-  0x38  is of type R 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITING BACK TO RESISTER FILE Instruction:  0x34
--------------------------------------------------------------------------------
  CLOCK CYCLE:  91 

  FETCH STAGE: INSTRUCTION - 0x00440413 From address - 0x3c
  DECODE STAGE: INSTRUCTION with PC-  0x38  is of type R 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
--------------------------------------------------------------------------------
  CLOCK CYCLE:  92 

  FETCH STAGE: INSTRUCTION - 0x00158593 From address - 0x40
  DECODE STAGE: INSTRUCTION with PC-  0x3c  is of type I 
  EXECUTING ADD INSTRUCTION with PC:  0x38
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
--------------------------------------------------------------------------------
  CLOCK CYCLE:  93 

  FETCH STAGE: INSTRUCTION - 0xFE0006E3 From address - 0x44
BRANCH TABLE BUFFER :    PC    68    ADDRESS:     48
  DECODE STAGE: INSTRUCTION with PC-  0x40  is of type I 
  EXECUTING ADDI INSTRUCTION with PC:  0x3c
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
--------------------------------------------------------------------------------
  CLOCK CYCLE:  94 

  FETCH STAGE: INSTRUCTION - 0x0035DC63 From address - 0x30
  DECODE STAGE: INSTRUCTION with PC-  0x44  is of type B 
  EXECUTING ADDI INSTRUCTION with PC:  0x40
  WRITING BACK TO RESISTER FILE Instruction:  0x38
--------------------------------------------------------------------------------
  CLOCK CYCLE:  95 

  FETCH STAGE: INSTRUCTION - 0x00042503 From address - 0x34
  DECODE STAGE: INSTRUCTION with PC-  0x30  is of type B 
  EXECUTING BEQ INSTRUCTION with PC:  0x44
  WRITING BACK TO RESISTER FILE Instruction:  0x3c
--------------------------------------------------------------------------------
  CLOCK CYCLE:  96 

  FETCH STAGE: INSTRUCTION - 0x00A484B3 From address - 0x38
  DECODE STAGE: INSTRUCTION with PC-  0x34  is of type I 
  EXECUTING BGE INSTRUCTION with PC:  0x30
  WRITING BACK TO RESISTER FILE Instruction:  0x40
--------------------------------------------------------------------------------
  CLOCK CYCLE:  97 

  FETCH STAGE: INSTRUCTION - 0x00440413 From address - 0x3c
  DECODE STAGE: INSTRUCTION with PC-  0x38  is of type R 
Data Hazard Detected
  EXECUTING LD INSTRUCTION with PC:  0x34
--------------------------------------------------------------------------------
  CLOCK CYCLE:  98 

  FETCH STAGE: INSTRUCTION - 0x00440413 From address - 0x3c
  DECODE STAGE: INSTRUCTION with PC-  0x38  is of type R 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  LOADING FROM MEMORY FROM ADDRESS->  0x10001010  Instruction:  0x34
--------------------------------------------------------------------------------
  CLOCK CYCLE:  99 

  FETCH STAGE: INSTRUCTION - 0x00440413 From address - 0x3c
  DECODE STAGE: INSTRUCTION with PC-  0x38  is of type R 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITING BACK TO RESISTER FILE Instruction:  0x34
--------------------------------------------------------------------------------
  CLOCK CYCLE:  100 

  FETCH STAGE: INSTRUCTION - 0x00440413 From address - 0x3c
  DECODE STAGE: INSTRUCTION with PC-  0x38  is of type R 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
--------------------------------------------------------------------------------
  CLOCK CYCLE:  101 

  FETCH STAGE: INSTRUCTION - 0x00158593 From address - 0x40
  DECODE STAGE: INSTRUCTION with PC-  0x3c  is of type I 
  EXECUTING ADD INSTRUCTION with PC:  0x38
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
--------------------------------------------------------------------------------
  CLOCK CYCLE:  102 

  FETCH STAGE: INSTRUCTION - 0xFE0006E3 From address - 0x44
BRANCH TABLE BUFFER :    PC    68    ADDRESS:     48
  DECODE STAGE: INSTRUCTION with PC-  0x40  is of type I 
  EXECUTING ADDI INSTRUCTION with PC:  0x3c
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
--------------------------------------------------------------------------------
  CLOCK CYCLE:  103 

  FETCH STAGE: INSTRUCTION - 0x0035DC63 From address - 0x30
  DECODE STAGE: INSTRUCTION with PC-  0x44  is of type B 
  EXECUTING ADDI INSTRUCTION with PC:  0x40
  WRITING BACK TO RESISTER FILE Instruction:  0x38
--------------------------------------------------------------------------------
  CLOCK CYCLE:  104 

  FETCH STAGE: INSTRUCTION - 0x00042503 From address - 0x34
  DECODE STAGE: INSTRUCTION with PC-  0x30  is of type B 
  EXECUTING BEQ INSTRUCTION with PC:  0x44
  WRITING BACK TO RESISTER FILE Instruction:  0x3c
--------------------------------------------------------------------------------
  CLOCK CYCLE:  105 

  FETCH STAGE: INSTRUCTION - 0x00A484B3 From address - 0x38
  DECODE STAGE: INSTRUCTION with PC-  0x34  is of type I 
  EXECUTING BGE INSTRUCTION with PC:  0x30
Control Hazard Detected
  WRITING BACK TO RESISTER FILE Instruction:  0x40
--------------------------------------------------------------------------------
  CLOCK CYCLE:  106 

  FETCH STAGE: INSTRUCTION - 0x00000A13 From address - 0x48
  DECODE STAGE WHEN THERE IS A STALL ---------------------------------------->
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
--------------------------------------------------------------------------------
  CLOCK CYCLE:  107 

  FETCH STAGE: INSTRUCTION - 0x00000A93 From address - 0x4c
  DECODE STAGE: INSTRUCTION with PC-  0x48  is of type I 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
--------------------------------------------------------------------------------
  CLOCK CYCLE:  108 

  FETCH STAGE: INSTRUCTION - 0x00000B13 From address - 0x50
  DECODE STAGE: INSTRUCTION with PC-  0x4c  is of type I 
  EXECUTING ADDI INSTRUCTION with PC:  0x48
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
--------------------------------------------------------------------------------
  CLOCK CYCLE:  109 

  FETCH STAGE: INSTRUCTION - 0xFFFFFFFF From address - 0x54
  DECODE STAGE: INSTRUCTION with PC-  0x50  is of type I 
  EXECUTING ADDI INSTRUCTION with PC:  0x4c
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
--------------------------------------------------------------------------------
  CLOCK CYCLE:  110 

  EXECUTING ADDI INSTRUCTION with PC:  0x50
  WRITING BACK TO RESISTER FILE Instruction:  0x48
--------------------------------------------------------------------------------
  CLOCK CYCLE:  111 

  WRITING BACK TO RESISTER FILE Instruction:  0x4c
--------------------------------------------------------------------------------
  CLOCK CYCLE:  112 

  WRITING BACK TO RESISTER FILE Instruction:  0x50
--------------------------------------------------------------------------------
  CLOCK CYCLE:  113 

--------------------------------------------------------------------------------
WRITTEN TO DATA MEMORY
WRITTEN TO REGISTER FILE


