REGISTER FILE AND INSTRUCTION MEMORY HAS BEEN RESETTED
INPUT FILE LOADED


--------------------------------------------------------------------------------
  CLOCK CYCLE:  0 

  READING FROM CACHE MEMORY 
  COLD MISS DETECTED 
  FETCH STAGE: INSTRUCTION - 0x00500193 From address - 0x0
  DECODE STAGE WHEN THERE IS A STALL ---------------------------------------->
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
INSTRUCTION CACHE--> 
['0x00500193', '0x100013B7', '0x10001437', '0x00000233']
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]

 DATA CACHE--> 
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  1 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0x100013B7 From address - 0x4
  DECODE STAGE: INSTRUCTION with PC-  0x0  is of type I 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
INSTRUCTION CACHE--> 
['0x00500193', '0x100013B7', '0x10001437', '0x00000233']
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]

 DATA CACHE--> 
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  2 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0x10001437 From address - 0x8
  DECODE STAGE: INSTRUCTION with PC-  0x4  is of type U 
  EXECUTING ADDI INSTRUCTION with PC:  0x0
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
INSTRUCTION CACHE--> 
['0x00500193', '0x100013B7', '0x10001437', '0x00000233']
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]

 DATA CACHE--> 
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  3 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0x00000233 From address - 0xc
  DECODE STAGE: INSTRUCTION with PC-  0x8  is of type U 
  EXECUTING LUI INSTRUCTION with PC:  0x4
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
INSTRUCTION CACHE--> 
['0x00500193', '0x100013B7', '0x10001437', '0x00000233']
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]

 DATA CACHE--> 
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  4 

  READING FROM CACHE MEMORY 
  COLD MISS DETECTED 
  FETCH STAGE: INSTRUCTION - 0x000004B3 From address - 0x10
  DECODE STAGE: INSTRUCTION with PC-  0xc  is of type R 
  EXECUTING LUI INSTRUCTION with PC:  0x8
  WRITING BACK TO RESISTER FILE Instruction:  0x0
INSTRUCTION CACHE--> 
['0x00500193', '0x100013B7', '0x10001437', '0x00000233']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
[0, 0, 0, 0]
[0, 0, 0, 0]

 DATA CACHE--> 
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  5 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0x000005B3 From address - 0x14
  DECODE STAGE: INSTRUCTION with PC-  0x10  is of type R 
  EXECUTING ADD INSTRUCTION with PC:  0xc
  WRITING BACK TO RESISTER FILE Instruction:  0x4
INSTRUCTION CACHE--> 
['0x00500193', '0x100013B7', '0x10001437', '0x00000233']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
[0, 0, 0, 0]
[0, 0, 0, 0]

 DATA CACHE--> 
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  6 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0x00325C63 From address - 0x18
  DECODE STAGE: INSTRUCTION with PC-  0x14  is of type R 
  EXECUTING ADD INSTRUCTION with PC:  0x10
  WRITING BACK TO RESISTER FILE Instruction:  0x8
INSTRUCTION CACHE--> 
['0x00500193', '0x100013B7', '0x10001437', '0x00000233']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
[0, 0, 0, 0]
[0, 0, 0, 0]

 DATA CACHE--> 
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  7 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0x00120313 From address - 0x1c
  DECODE STAGE: INSTRUCTION with PC-  0x18  is of type B 
  EXECUTING ADD INSTRUCTION with PC:  0x14
  WRITING BACK TO RESISTER FILE Instruction:  0xc
INSTRUCTION CACHE--> 
['0x00500193', '0x100013B7', '0x10001437', '0x00000233']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
[0, 0, 0, 0]
[0, 0, 0, 0]

 DATA CACHE--> 
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  8 

  READING FROM CACHE MEMORY 
  COLD MISS DETECTED 
  FETCH STAGE: INSTRUCTION - 0x0063A023 From address - 0x20
  DECODE STAGE: INSTRUCTION with PC-  0x1c  is of type I 
  EXECUTING BGE INSTRUCTION with PC:  0x18
  WRITING BACK TO RESISTER FILE Instruction:  0x10
INSTRUCTION CACHE--> 
['0x00500193', '0x100013B7', '0x10001437', '0x00000233']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
[0, 0, 0, 0]

 DATA CACHE--> 
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  9 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0x00438393 From address - 0x24
  DECODE STAGE: INSTRUCTION with PC-  0x20  is of type S 
Data Hazard Detected
  EXECUTING ADDI INSTRUCTION with PC:  0x1c
  WRITING BACK TO RESISTER FILE Instruction:  0x14
INSTRUCTION CACHE--> 
['0x00500193', '0x100013B7', '0x10001437', '0x00000233']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
[0, 0, 0, 0]

 DATA CACHE--> 
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  10 

  FETCH STAGE: INSTRUCTION - 0x00438393 From address - 0x24
  DECODE STAGE: INSTRUCTION with PC-  0x20  is of type S 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
INSTRUCTION CACHE--> 
['0x00500193', '0x100013B7', '0x10001437', '0x00000233']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
[0, 0, 0, 0]

 DATA CACHE--> 
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  11 

  FETCH STAGE: INSTRUCTION - 0x00438393 From address - 0x24
  DECODE STAGE: INSTRUCTION with PC-  0x20  is of type S 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITING BACK TO RESISTER FILE Instruction:  0x1c
INSTRUCTION CACHE--> 
['0x00500193', '0x100013B7', '0x10001437', '0x00000233']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
[0, 0, 0, 0]

 DATA CACHE--> 
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  12 

  FETCH STAGE: INSTRUCTION - 0x00438393 From address - 0x24
  DECODE STAGE: INSTRUCTION with PC-  0x20  is of type S 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
INSTRUCTION CACHE--> 
['0x00500193', '0x100013B7', '0x10001437', '0x00000233']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
[0, 0, 0, 0]

 DATA CACHE--> 
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  13 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0x00120213 From address - 0x28
  DECODE STAGE: INSTRUCTION with PC-  0x24  is of type I 
  EXECUTING SD INSTRUCTION with PC:  0x20
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
INSTRUCTION CACHE--> 
['0x00500193', '0x100013B7', '0x10001437', '0x00000233']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
[0, 0, 0, 0]

 DATA CACHE--> 
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  14 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0xFE0006E3 From address - 0x2c
  DECODE STAGE: INSTRUCTION with PC-  0x28  is of type I 
  EXECUTING ADDI INSTRUCTION with PC:  0x24
  WRITING TO CACHE MEMORY AND MAIN MEMORY 
  STORING TO MEMORY AT ADDRESS->  0x10001000  Instruction:  0x20
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
INSTRUCTION CACHE--> 
['0x00500193', '0x100013B7', '0x10001437', '0x00000233']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
[0, 0, 0, 0]

 DATA CACHE--> 
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  15 

  READING FROM CACHE MEMORY 
  COLD MISS DETECTED 
  FETCH STAGE: INSTRUCTION - 0x0035DC63 From address - 0x30
  DECODE STAGE: INSTRUCTION with PC-  0x2c  is of type B 
  EXECUTING ADDI INSTRUCTION with PC:  0x28
INSTRUCTION CACHE--> 
['0x00500193', '0x100013B7', '0x10001437', '0x00000233']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  16 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0x00042503 From address - 0x34
  DECODE STAGE: INSTRUCTION with PC-  0x30  is of type B 
  EXECUTING BEQ INSTRUCTION with PC:  0x2c
Control Hazard Detected
  WRITING BACK TO RESISTER FILE Instruction:  0x24
INSTRUCTION CACHE--> 
['0x00500193', '0x100013B7', '0x10001437', '0x00000233']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  17 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0x00325C63 From address - 0x18
  DECODE STAGE WHEN THERE IS A STALL ---------------------------------------->
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  WRITING BACK TO RESISTER FILE Instruction:  0x28
INSTRUCTION CACHE--> 
['0x00500193', '0x100013B7', '0x10001437', '0x00000233']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  18 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0x00120313 From address - 0x1c
  DECODE STAGE: INSTRUCTION with PC-  0x18  is of type B 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
INSTRUCTION CACHE--> 
['0x00500193', '0x100013B7', '0x10001437', '0x00000233']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  19 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0x0063A023 From address - 0x20
  DECODE STAGE: INSTRUCTION with PC-  0x1c  is of type I 
  EXECUTING BGE INSTRUCTION with PC:  0x18
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
INSTRUCTION CACHE--> 
['0x00500193', '0x100013B7', '0x10001437', '0x00000233']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  20 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0x00438393 From address - 0x24
  DECODE STAGE: INSTRUCTION with PC-  0x20  is of type S 
Data Hazard Detected
  EXECUTING ADDI INSTRUCTION with PC:  0x1c
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
INSTRUCTION CACHE--> 
['0x00500193', '0x100013B7', '0x10001437', '0x00000233']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  21 

  FETCH STAGE: INSTRUCTION - 0x00438393 From address - 0x24
  DECODE STAGE: INSTRUCTION with PC-  0x20  is of type S 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
INSTRUCTION CACHE--> 
['0x00500193', '0x100013B7', '0x10001437', '0x00000233']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  22 

  FETCH STAGE: INSTRUCTION - 0x00438393 From address - 0x24
  DECODE STAGE: INSTRUCTION with PC-  0x20  is of type S 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITING BACK TO RESISTER FILE Instruction:  0x1c
INSTRUCTION CACHE--> 
['0x00500193', '0x100013B7', '0x10001437', '0x00000233']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  23 

  FETCH STAGE: INSTRUCTION - 0x00438393 From address - 0x24
  DECODE STAGE: INSTRUCTION with PC-  0x20  is of type S 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
INSTRUCTION CACHE--> 
['0x00500193', '0x100013B7', '0x10001437', '0x00000233']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  24 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0x00120213 From address - 0x28
  DECODE STAGE: INSTRUCTION with PC-  0x24  is of type I 
  EXECUTING SD INSTRUCTION with PC:  0x20
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
INSTRUCTION CACHE--> 
['0x00500193', '0x100013B7', '0x10001437', '0x00000233']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  25 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0xFE0006E3 From address - 0x2c
BRANCH TABLE BUFFER :    PC    44    ADDRESS:     24
  DECODE STAGE: INSTRUCTION with PC-  0x28  is of type I 
  EXECUTING ADDI INSTRUCTION with PC:  0x24
  WRITING TO CACHE MEMORY AND MAIN MEMORY 
  STORING TO MEMORY AT ADDRESS->  0x10001004  Instruction:  0x20
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
INSTRUCTION CACHE--> 
['0x00500193', '0x100013B7', '0x10001437', '0x00000233']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  26 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0x00325C63 From address - 0x18
  DECODE STAGE: INSTRUCTION with PC-  0x2c  is of type B 
  EXECUTING ADDI INSTRUCTION with PC:  0x28
INSTRUCTION CACHE--> 
['0x00500193', '0x100013B7', '0x10001437', '0x00000233']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  27 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0x00120313 From address - 0x1c
  DECODE STAGE: INSTRUCTION with PC-  0x18  is of type B 
  EXECUTING BEQ INSTRUCTION with PC:  0x2c
  WRITING BACK TO RESISTER FILE Instruction:  0x24
INSTRUCTION CACHE--> 
['0x00500193', '0x100013B7', '0x10001437', '0x00000233']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  28 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0x0063A023 From address - 0x20
  DECODE STAGE: INSTRUCTION with PC-  0x1c  is of type I 
  EXECUTING BGE INSTRUCTION with PC:  0x18
  WRITING BACK TO RESISTER FILE Instruction:  0x28
INSTRUCTION CACHE--> 
['0x00500193', '0x100013B7', '0x10001437', '0x00000233']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  29 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0x00438393 From address - 0x24
  DECODE STAGE: INSTRUCTION with PC-  0x20  is of type S 
Data Hazard Detected
  EXECUTING ADDI INSTRUCTION with PC:  0x1c
INSTRUCTION CACHE--> 
['0x00500193', '0x100013B7', '0x10001437', '0x00000233']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  30 

  FETCH STAGE: INSTRUCTION - 0x00438393 From address - 0x24
  DECODE STAGE: INSTRUCTION with PC-  0x20  is of type S 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
INSTRUCTION CACHE--> 
['0x00500193', '0x100013B7', '0x10001437', '0x00000233']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  31 

  FETCH STAGE: INSTRUCTION - 0x00438393 From address - 0x24
  DECODE STAGE: INSTRUCTION with PC-  0x20  is of type S 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITING BACK TO RESISTER FILE Instruction:  0x1c
INSTRUCTION CACHE--> 
['0x00500193', '0x100013B7', '0x10001437', '0x00000233']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  32 

  FETCH STAGE: INSTRUCTION - 0x00438393 From address - 0x24
  DECODE STAGE: INSTRUCTION with PC-  0x20  is of type S 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
INSTRUCTION CACHE--> 
['0x00500193', '0x100013B7', '0x10001437', '0x00000233']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  33 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0x00120213 From address - 0x28
  DECODE STAGE: INSTRUCTION with PC-  0x24  is of type I 
  EXECUTING SD INSTRUCTION with PC:  0x20
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
INSTRUCTION CACHE--> 
['0x00500193', '0x100013B7', '0x10001437', '0x00000233']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  34 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0xFE0006E3 From address - 0x2c
BRANCH TABLE BUFFER :    PC    44    ADDRESS:     24
  DECODE STAGE: INSTRUCTION with PC-  0x28  is of type I 
  EXECUTING ADDI INSTRUCTION with PC:  0x24
  WRITING TO CACHE MEMORY AND MAIN MEMORY 
  STORING TO MEMORY AT ADDRESS->  0x10001008  Instruction:  0x20
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
INSTRUCTION CACHE--> 
['0x00500193', '0x100013B7', '0x10001437', '0x00000233']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  35 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0x00325C63 From address - 0x18
  DECODE STAGE: INSTRUCTION with PC-  0x2c  is of type B 
  EXECUTING ADDI INSTRUCTION with PC:  0x28
INSTRUCTION CACHE--> 
['0x00500193', '0x100013B7', '0x10001437', '0x00000233']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  36 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0x00120313 From address - 0x1c
  DECODE STAGE: INSTRUCTION with PC-  0x18  is of type B 
  EXECUTING BEQ INSTRUCTION with PC:  0x2c
  WRITING BACK TO RESISTER FILE Instruction:  0x24
INSTRUCTION CACHE--> 
['0x00500193', '0x100013B7', '0x10001437', '0x00000233']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  37 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0x0063A023 From address - 0x20
  DECODE STAGE: INSTRUCTION with PC-  0x1c  is of type I 
  EXECUTING BGE INSTRUCTION with PC:  0x18
  WRITING BACK TO RESISTER FILE Instruction:  0x28
INSTRUCTION CACHE--> 
['0x00500193', '0x100013B7', '0x10001437', '0x00000233']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  38 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0x00438393 From address - 0x24
  DECODE STAGE: INSTRUCTION with PC-  0x20  is of type S 
Data Hazard Detected
  EXECUTING ADDI INSTRUCTION with PC:  0x1c
INSTRUCTION CACHE--> 
['0x00500193', '0x100013B7', '0x10001437', '0x00000233']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  39 

  FETCH STAGE: INSTRUCTION - 0x00438393 From address - 0x24
  DECODE STAGE: INSTRUCTION with PC-  0x20  is of type S 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
INSTRUCTION CACHE--> 
['0x00500193', '0x100013B7', '0x10001437', '0x00000233']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  40 

  FETCH STAGE: INSTRUCTION - 0x00438393 From address - 0x24
  DECODE STAGE: INSTRUCTION with PC-  0x20  is of type S 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITING BACK TO RESISTER FILE Instruction:  0x1c
INSTRUCTION CACHE--> 
['0x00500193', '0x100013B7', '0x10001437', '0x00000233']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  41 

  FETCH STAGE: INSTRUCTION - 0x00438393 From address - 0x24
  DECODE STAGE: INSTRUCTION with PC-  0x20  is of type S 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
INSTRUCTION CACHE--> 
['0x00500193', '0x100013B7', '0x10001437', '0x00000233']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  42 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0x00120213 From address - 0x28
  DECODE STAGE: INSTRUCTION with PC-  0x24  is of type I 
  EXECUTING SD INSTRUCTION with PC:  0x20
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
INSTRUCTION CACHE--> 
['0x00500193', '0x100013B7', '0x10001437', '0x00000233']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  43 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0xFE0006E3 From address - 0x2c
BRANCH TABLE BUFFER :    PC    44    ADDRESS:     24
  DECODE STAGE: INSTRUCTION with PC-  0x28  is of type I 
  EXECUTING ADDI INSTRUCTION with PC:  0x24
  WRITING TO CACHE MEMORY AND MAIN MEMORY 
  STORING TO MEMORY AT ADDRESS->  0x1000100c  Instruction:  0x20
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
INSTRUCTION CACHE--> 
['0x00500193', '0x100013B7', '0x10001437', '0x00000233']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  44 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0x00325C63 From address - 0x18
  DECODE STAGE: INSTRUCTION with PC-  0x2c  is of type B 
  EXECUTING ADDI INSTRUCTION with PC:  0x28
INSTRUCTION CACHE--> 
['0x00500193', '0x100013B7', '0x10001437', '0x00000233']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  45 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0x00120313 From address - 0x1c
  DECODE STAGE: INSTRUCTION with PC-  0x18  is of type B 
  EXECUTING BEQ INSTRUCTION with PC:  0x2c
  WRITING BACK TO RESISTER FILE Instruction:  0x24
INSTRUCTION CACHE--> 
['0x00500193', '0x100013B7', '0x10001437', '0x00000233']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  46 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0x0063A023 From address - 0x20
  DECODE STAGE: INSTRUCTION with PC-  0x1c  is of type I 
  EXECUTING BGE INSTRUCTION with PC:  0x18
  WRITING BACK TO RESISTER FILE Instruction:  0x28
INSTRUCTION CACHE--> 
['0x00500193', '0x100013B7', '0x10001437', '0x00000233']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  47 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0x00438393 From address - 0x24
  DECODE STAGE: INSTRUCTION with PC-  0x20  is of type S 
Data Hazard Detected
  EXECUTING ADDI INSTRUCTION with PC:  0x1c
INSTRUCTION CACHE--> 
['0x00500193', '0x100013B7', '0x10001437', '0x00000233']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  48 

  FETCH STAGE: INSTRUCTION - 0x00438393 From address - 0x24
  DECODE STAGE: INSTRUCTION with PC-  0x20  is of type S 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
INSTRUCTION CACHE--> 
['0x00500193', '0x100013B7', '0x10001437', '0x00000233']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  49 

  FETCH STAGE: INSTRUCTION - 0x00438393 From address - 0x24
  DECODE STAGE: INSTRUCTION with PC-  0x20  is of type S 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITING BACK TO RESISTER FILE Instruction:  0x1c
INSTRUCTION CACHE--> 
['0x00500193', '0x100013B7', '0x10001437', '0x00000233']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  50 

  FETCH STAGE: INSTRUCTION - 0x00438393 From address - 0x24
  DECODE STAGE: INSTRUCTION with PC-  0x20  is of type S 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
INSTRUCTION CACHE--> 
['0x00500193', '0x100013B7', '0x10001437', '0x00000233']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  51 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0x00120213 From address - 0x28
  DECODE STAGE: INSTRUCTION with PC-  0x24  is of type I 
  EXECUTING SD INSTRUCTION with PC:  0x20
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
INSTRUCTION CACHE--> 
['0x00500193', '0x100013B7', '0x10001437', '0x00000233']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  52 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0xFE0006E3 From address - 0x2c
BRANCH TABLE BUFFER :    PC    44    ADDRESS:     24
  DECODE STAGE: INSTRUCTION with PC-  0x28  is of type I 
  EXECUTING ADDI INSTRUCTION with PC:  0x24
  WRITING TO CACHE MEMORY AND MAIN MEMORY 
  STORING TO MEMORY AT ADDRESS->  0x10001010  Instruction:  0x20
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
INSTRUCTION CACHE--> 
['0x00500193', '0x100013B7', '0x10001437', '0x00000233']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  53 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0x00325C63 From address - 0x18
  DECODE STAGE: INSTRUCTION with PC-  0x2c  is of type B 
  EXECUTING ADDI INSTRUCTION with PC:  0x28
INSTRUCTION CACHE--> 
['0x00500193', '0x100013B7', '0x10001437', '0x00000233']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  54 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0x00120313 From address - 0x1c
  DECODE STAGE: INSTRUCTION with PC-  0x18  is of type B 
  EXECUTING BEQ INSTRUCTION with PC:  0x2c
  WRITING BACK TO RESISTER FILE Instruction:  0x24
INSTRUCTION CACHE--> 
['0x00500193', '0x100013B7', '0x10001437', '0x00000233']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  55 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0x0063A023 From address - 0x20
  DECODE STAGE: INSTRUCTION with PC-  0x1c  is of type I 
  EXECUTING BGE INSTRUCTION with PC:  0x18
Control Hazard Detected
  WRITING BACK TO RESISTER FILE Instruction:  0x28
INSTRUCTION CACHE--> 
['0x00500193', '0x100013B7', '0x10001437', '0x00000233']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  56 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0x0035DC63 From address - 0x30
  DECODE STAGE WHEN THERE IS A STALL ---------------------------------------->
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
INSTRUCTION CACHE--> 
['0x00500193', '0x100013B7', '0x10001437', '0x00000233']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  57 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0x00042503 From address - 0x34
  DECODE STAGE: INSTRUCTION with PC-  0x30  is of type B 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
INSTRUCTION CACHE--> 
['0x00500193', '0x100013B7', '0x10001437', '0x00000233']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  58 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0x00A484B3 From address - 0x38
  DECODE STAGE: INSTRUCTION with PC-  0x34  is of type I 
  EXECUTING BGE INSTRUCTION with PC:  0x30
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
INSTRUCTION CACHE--> 
['0x00500193', '0x100013B7', '0x10001437', '0x00000233']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  59 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0x00440413 From address - 0x3c
  DECODE STAGE: INSTRUCTION with PC-  0x38  is of type R 
Data Hazard Detected
  EXECUTING LD INSTRUCTION with PC:  0x34
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
INSTRUCTION CACHE--> 
['0x00500193', '0x100013B7', '0x10001437', '0x00000233']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  60 

  FETCH STAGE: INSTRUCTION - 0x00440413 From address - 0x3c
  DECODE STAGE: INSTRUCTION with PC-  0x38  is of type R 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  READING FROM CACHE MEMORY 
  COLD MISS DETECTED 
  LOADING FROM MEMORY FROM ADDRESS->  0x10001000  Instruction:  0x34
INSTRUCTION CACHE--> 
['0x00500193', '0x100013B7', '0x10001437', '0x00000233']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
['0x1', '0x2', '0x3', '0x4']
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  61 

  FETCH STAGE: INSTRUCTION - 0x00440413 From address - 0x3c
  DECODE STAGE: INSTRUCTION with PC-  0x38  is of type R 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITING BACK TO RESISTER FILE Instruction:  0x34
INSTRUCTION CACHE--> 
['0x00500193', '0x100013B7', '0x10001437', '0x00000233']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
['0x1', '0x2', '0x3', '0x4']
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  62 

  FETCH STAGE: INSTRUCTION - 0x00440413 From address - 0x3c
  DECODE STAGE: INSTRUCTION with PC-  0x38  is of type R 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
INSTRUCTION CACHE--> 
['0x00500193', '0x100013B7', '0x10001437', '0x00000233']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
['0x1', '0x2', '0x3', '0x4']
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  63 

  READING FROM CACHE MEMORY 
  CONFLICT MISS DETECTED 
  FETCH STAGE: INSTRUCTION - 0x00158593 From address - 0x40
  DECODE STAGE: INSTRUCTION with PC-  0x3c  is of type I 
  EXECUTING ADD INSTRUCTION with PC:  0x38
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
INSTRUCTION CACHE--> 
['0x00158593', '0xFE0006E3', '0x00000A13', '0x00000A93']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
['0x1', '0x2', '0x3', '0x4']
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  64 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0xFE0006E3 From address - 0x44
  DECODE STAGE: INSTRUCTION with PC-  0x40  is of type I 
  EXECUTING ADDI INSTRUCTION with PC:  0x3c
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
INSTRUCTION CACHE--> 
['0x00158593', '0xFE0006E3', '0x00000A13', '0x00000A93']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
['0x1', '0x2', '0x3', '0x4']
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  65 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0x00000A13 From address - 0x48
  DECODE STAGE: INSTRUCTION with PC-  0x44  is of type B 
  EXECUTING ADDI INSTRUCTION with PC:  0x40
  WRITING BACK TO RESISTER FILE Instruction:  0x38
INSTRUCTION CACHE--> 
['0x00158593', '0xFE0006E3', '0x00000A13', '0x00000A93']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
['0x1', '0x2', '0x3', '0x4']
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  66 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0x00000A93 From address - 0x4c
  DECODE STAGE: INSTRUCTION with PC-  0x48  is of type I 
  EXECUTING BEQ INSTRUCTION with PC:  0x44
Control Hazard Detected
  WRITING BACK TO RESISTER FILE Instruction:  0x3c
INSTRUCTION CACHE--> 
['0x00158593', '0xFE0006E3', '0x00000A13', '0x00000A93']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
['0x1', '0x2', '0x3', '0x4']
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  67 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0x0035DC63 From address - 0x30
  DECODE STAGE WHEN THERE IS A STALL ---------------------------------------->
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  WRITING BACK TO RESISTER FILE Instruction:  0x40
INSTRUCTION CACHE--> 
['0x00158593', '0xFE0006E3', '0x00000A13', '0x00000A93']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
['0x1', '0x2', '0x3', '0x4']
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  68 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0x00042503 From address - 0x34
  DECODE STAGE: INSTRUCTION with PC-  0x30  is of type B 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
INSTRUCTION CACHE--> 
['0x00158593', '0xFE0006E3', '0x00000A13', '0x00000A93']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
['0x1', '0x2', '0x3', '0x4']
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  69 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0x00A484B3 From address - 0x38
  DECODE STAGE: INSTRUCTION with PC-  0x34  is of type I 
  EXECUTING BGE INSTRUCTION with PC:  0x30
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
INSTRUCTION CACHE--> 
['0x00158593', '0xFE0006E3', '0x00000A13', '0x00000A93']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
['0x1', '0x2', '0x3', '0x4']
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  70 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0x00440413 From address - 0x3c
  DECODE STAGE: INSTRUCTION with PC-  0x38  is of type R 
Data Hazard Detected
  EXECUTING LD INSTRUCTION with PC:  0x34
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
INSTRUCTION CACHE--> 
['0x00158593', '0xFE0006E3', '0x00000A13', '0x00000A93']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
['0x1', '0x2', '0x3', '0x4']
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  71 

  FETCH STAGE: INSTRUCTION - 0x00440413 From address - 0x3c
  DECODE STAGE: INSTRUCTION with PC-  0x38  is of type R 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  READING FROM CACHE MEMORY 
  LOADING FROM MEMORY FROM ADDRESS->  0x10001004  Instruction:  0x34
INSTRUCTION CACHE--> 
['0x00158593', '0xFE0006E3', '0x00000A13', '0x00000A93']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
['0x1', '0x2', '0x3', '0x4']
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  72 

  FETCH STAGE: INSTRUCTION - 0x00440413 From address - 0x3c
  DECODE STAGE: INSTRUCTION with PC-  0x38  is of type R 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITING BACK TO RESISTER FILE Instruction:  0x34
INSTRUCTION CACHE--> 
['0x00158593', '0xFE0006E3', '0x00000A13', '0x00000A93']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
['0x1', '0x2', '0x3', '0x4']
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  73 

  FETCH STAGE: INSTRUCTION - 0x00440413 From address - 0x3c
  DECODE STAGE: INSTRUCTION with PC-  0x38  is of type R 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
INSTRUCTION CACHE--> 
['0x00158593', '0xFE0006E3', '0x00000A13', '0x00000A93']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
['0x1', '0x2', '0x3', '0x4']
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  74 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0x00158593 From address - 0x40
  DECODE STAGE: INSTRUCTION with PC-  0x3c  is of type I 
  EXECUTING ADD INSTRUCTION with PC:  0x38
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
INSTRUCTION CACHE--> 
['0x00158593', '0xFE0006E3', '0x00000A13', '0x00000A93']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
['0x1', '0x2', '0x3', '0x4']
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  75 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0xFE0006E3 From address - 0x44
BRANCH TABLE BUFFER :    PC    68    ADDRESS:     48
  DECODE STAGE: INSTRUCTION with PC-  0x40  is of type I 
  EXECUTING ADDI INSTRUCTION with PC:  0x3c
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
INSTRUCTION CACHE--> 
['0x00158593', '0xFE0006E3', '0x00000A13', '0x00000A93']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
['0x1', '0x2', '0x3', '0x4']
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  76 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0x0035DC63 From address - 0x30
  DECODE STAGE: INSTRUCTION with PC-  0x44  is of type B 
  EXECUTING ADDI INSTRUCTION with PC:  0x40
  WRITING BACK TO RESISTER FILE Instruction:  0x38
INSTRUCTION CACHE--> 
['0x00158593', '0xFE0006E3', '0x00000A13', '0x00000A93']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
['0x1', '0x2', '0x3', '0x4']
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  77 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0x00042503 From address - 0x34
  DECODE STAGE: INSTRUCTION with PC-  0x30  is of type B 
  EXECUTING BEQ INSTRUCTION with PC:  0x44
  WRITING BACK TO RESISTER FILE Instruction:  0x3c
INSTRUCTION CACHE--> 
['0x00158593', '0xFE0006E3', '0x00000A13', '0x00000A93']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
['0x1', '0x2', '0x3', '0x4']
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  78 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0x00A484B3 From address - 0x38
  DECODE STAGE: INSTRUCTION with PC-  0x34  is of type I 
  EXECUTING BGE INSTRUCTION with PC:  0x30
  WRITING BACK TO RESISTER FILE Instruction:  0x40
INSTRUCTION CACHE--> 
['0x00158593', '0xFE0006E3', '0x00000A13', '0x00000A93']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
['0x1', '0x2', '0x3', '0x4']
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  79 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0x00440413 From address - 0x3c
  DECODE STAGE: INSTRUCTION with PC-  0x38  is of type R 
Data Hazard Detected
  EXECUTING LD INSTRUCTION with PC:  0x34
INSTRUCTION CACHE--> 
['0x00158593', '0xFE0006E3', '0x00000A13', '0x00000A93']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
['0x1', '0x2', '0x3', '0x4']
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  80 

  FETCH STAGE: INSTRUCTION - 0x00440413 From address - 0x3c
  DECODE STAGE: INSTRUCTION with PC-  0x38  is of type R 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  READING FROM CACHE MEMORY 
  LOADING FROM MEMORY FROM ADDRESS->  0x10001008  Instruction:  0x34
INSTRUCTION CACHE--> 
['0x00158593', '0xFE0006E3', '0x00000A13', '0x00000A93']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
['0x1', '0x2', '0x3', '0x4']
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  81 

  FETCH STAGE: INSTRUCTION - 0x00440413 From address - 0x3c
  DECODE STAGE: INSTRUCTION with PC-  0x38  is of type R 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITING BACK TO RESISTER FILE Instruction:  0x34
INSTRUCTION CACHE--> 
['0x00158593', '0xFE0006E3', '0x00000A13', '0x00000A93']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
['0x1', '0x2', '0x3', '0x4']
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  82 

  FETCH STAGE: INSTRUCTION - 0x00440413 From address - 0x3c
  DECODE STAGE: INSTRUCTION with PC-  0x38  is of type R 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
INSTRUCTION CACHE--> 
['0x00158593', '0xFE0006E3', '0x00000A13', '0x00000A93']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
['0x1', '0x2', '0x3', '0x4']
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  83 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0x00158593 From address - 0x40
  DECODE STAGE: INSTRUCTION with PC-  0x3c  is of type I 
  EXECUTING ADD INSTRUCTION with PC:  0x38
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
INSTRUCTION CACHE--> 
['0x00158593', '0xFE0006E3', '0x00000A13', '0x00000A93']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
['0x1', '0x2', '0x3', '0x4']
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  84 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0xFE0006E3 From address - 0x44
BRANCH TABLE BUFFER :    PC    68    ADDRESS:     48
  DECODE STAGE: INSTRUCTION with PC-  0x40  is of type I 
  EXECUTING ADDI INSTRUCTION with PC:  0x3c
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
INSTRUCTION CACHE--> 
['0x00158593', '0xFE0006E3', '0x00000A13', '0x00000A93']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
['0x1', '0x2', '0x3', '0x4']
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  85 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0x0035DC63 From address - 0x30
  DECODE STAGE: INSTRUCTION with PC-  0x44  is of type B 
  EXECUTING ADDI INSTRUCTION with PC:  0x40
  WRITING BACK TO RESISTER FILE Instruction:  0x38
INSTRUCTION CACHE--> 
['0x00158593', '0xFE0006E3', '0x00000A13', '0x00000A93']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
['0x1', '0x2', '0x3', '0x4']
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  86 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0x00042503 From address - 0x34
  DECODE STAGE: INSTRUCTION with PC-  0x30  is of type B 
  EXECUTING BEQ INSTRUCTION with PC:  0x44
  WRITING BACK TO RESISTER FILE Instruction:  0x3c
INSTRUCTION CACHE--> 
['0x00158593', '0xFE0006E3', '0x00000A13', '0x00000A93']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
['0x1', '0x2', '0x3', '0x4']
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  87 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0x00A484B3 From address - 0x38
  DECODE STAGE: INSTRUCTION with PC-  0x34  is of type I 
  EXECUTING BGE INSTRUCTION with PC:  0x30
  WRITING BACK TO RESISTER FILE Instruction:  0x40
INSTRUCTION CACHE--> 
['0x00158593', '0xFE0006E3', '0x00000A13', '0x00000A93']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
['0x1', '0x2', '0x3', '0x4']
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  88 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0x00440413 From address - 0x3c
  DECODE STAGE: INSTRUCTION with PC-  0x38  is of type R 
Data Hazard Detected
  EXECUTING LD INSTRUCTION with PC:  0x34
INSTRUCTION CACHE--> 
['0x00158593', '0xFE0006E3', '0x00000A13', '0x00000A93']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
['0x1', '0x2', '0x3', '0x4']
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  89 

  FETCH STAGE: INSTRUCTION - 0x00440413 From address - 0x3c
  DECODE STAGE: INSTRUCTION with PC-  0x38  is of type R 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  READING FROM CACHE MEMORY 
  LOADING FROM MEMORY FROM ADDRESS->  0x1000100c  Instruction:  0x34
INSTRUCTION CACHE--> 
['0x00158593', '0xFE0006E3', '0x00000A13', '0x00000A93']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
['0x1', '0x2', '0x3', '0x4']
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  90 

  FETCH STAGE: INSTRUCTION - 0x00440413 From address - 0x3c
  DECODE STAGE: INSTRUCTION with PC-  0x38  is of type R 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITING BACK TO RESISTER FILE Instruction:  0x34
INSTRUCTION CACHE--> 
['0x00158593', '0xFE0006E3', '0x00000A13', '0x00000A93']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
['0x1', '0x2', '0x3', '0x4']
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  91 

  FETCH STAGE: INSTRUCTION - 0x00440413 From address - 0x3c
  DECODE STAGE: INSTRUCTION with PC-  0x38  is of type R 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
INSTRUCTION CACHE--> 
['0x00158593', '0xFE0006E3', '0x00000A13', '0x00000A93']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
['0x1', '0x2', '0x3', '0x4']
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  92 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0x00158593 From address - 0x40
  DECODE STAGE: INSTRUCTION with PC-  0x3c  is of type I 
  EXECUTING ADD INSTRUCTION with PC:  0x38
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
INSTRUCTION CACHE--> 
['0x00158593', '0xFE0006E3', '0x00000A13', '0x00000A93']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
['0x1', '0x2', '0x3', '0x4']
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  93 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0xFE0006E3 From address - 0x44
BRANCH TABLE BUFFER :    PC    68    ADDRESS:     48
  DECODE STAGE: INSTRUCTION with PC-  0x40  is of type I 
  EXECUTING ADDI INSTRUCTION with PC:  0x3c
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
INSTRUCTION CACHE--> 
['0x00158593', '0xFE0006E3', '0x00000A13', '0x00000A93']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
['0x1', '0x2', '0x3', '0x4']
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  94 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0x0035DC63 From address - 0x30
  DECODE STAGE: INSTRUCTION with PC-  0x44  is of type B 
  EXECUTING ADDI INSTRUCTION with PC:  0x40
  WRITING BACK TO RESISTER FILE Instruction:  0x38
INSTRUCTION CACHE--> 
['0x00158593', '0xFE0006E3', '0x00000A13', '0x00000A93']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
['0x1', '0x2', '0x3', '0x4']
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  95 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0x00042503 From address - 0x34
  DECODE STAGE: INSTRUCTION with PC-  0x30  is of type B 
  EXECUTING BEQ INSTRUCTION with PC:  0x44
  WRITING BACK TO RESISTER FILE Instruction:  0x3c
INSTRUCTION CACHE--> 
['0x00158593', '0xFE0006E3', '0x00000A13', '0x00000A93']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
['0x1', '0x2', '0x3', '0x4']
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  96 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0x00A484B3 From address - 0x38
  DECODE STAGE: INSTRUCTION with PC-  0x34  is of type I 
  EXECUTING BGE INSTRUCTION with PC:  0x30
  WRITING BACK TO RESISTER FILE Instruction:  0x40
INSTRUCTION CACHE--> 
['0x00158593', '0xFE0006E3', '0x00000A13', '0x00000A93']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
['0x1', '0x2', '0x3', '0x4']
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  97 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0x00440413 From address - 0x3c
  DECODE STAGE: INSTRUCTION with PC-  0x38  is of type R 
Data Hazard Detected
  EXECUTING LD INSTRUCTION with PC:  0x34
INSTRUCTION CACHE--> 
['0x00158593', '0xFE0006E3', '0x00000A13', '0x00000A93']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
['0x1', '0x2', '0x3', '0x4']
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  98 

  FETCH STAGE: INSTRUCTION - 0x00440413 From address - 0x3c
  DECODE STAGE: INSTRUCTION with PC-  0x38  is of type R 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  READING FROM CACHE MEMORY 
  COLD MISS DETECTED 
  LOADING FROM MEMORY FROM ADDRESS->  0x10001010  Instruction:  0x34
INSTRUCTION CACHE--> 
['0x00158593', '0xFE0006E3', '0x00000A13', '0x00000A93']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
['0x1', '0x2', '0x3', '0x4']
['0x5', '', '', '']
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  99 

  FETCH STAGE: INSTRUCTION - 0x00440413 From address - 0x3c
  DECODE STAGE: INSTRUCTION with PC-  0x38  is of type R 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITING BACK TO RESISTER FILE Instruction:  0x34
INSTRUCTION CACHE--> 
['0x00158593', '0xFE0006E3', '0x00000A13', '0x00000A93']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
['0x1', '0x2', '0x3', '0x4']
['0x5', '', '', '']
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  100 

  FETCH STAGE: INSTRUCTION - 0x00440413 From address - 0x3c
  DECODE STAGE: INSTRUCTION with PC-  0x38  is of type R 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
INSTRUCTION CACHE--> 
['0x00158593', '0xFE0006E3', '0x00000A13', '0x00000A93']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
['0x1', '0x2', '0x3', '0x4']
['0x5', '', '', '']
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  101 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0x00158593 From address - 0x40
  DECODE STAGE: INSTRUCTION with PC-  0x3c  is of type I 
  EXECUTING ADD INSTRUCTION with PC:  0x38
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
INSTRUCTION CACHE--> 
['0x00158593', '0xFE0006E3', '0x00000A13', '0x00000A93']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
['0x1', '0x2', '0x3', '0x4']
['0x5', '', '', '']
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  102 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0xFE0006E3 From address - 0x44
BRANCH TABLE BUFFER :    PC    68    ADDRESS:     48
  DECODE STAGE: INSTRUCTION with PC-  0x40  is of type I 
  EXECUTING ADDI INSTRUCTION with PC:  0x3c
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
INSTRUCTION CACHE--> 
['0x00158593', '0xFE0006E3', '0x00000A13', '0x00000A93']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
['0x1', '0x2', '0x3', '0x4']
['0x5', '', '', '']
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  103 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0x0035DC63 From address - 0x30
  DECODE STAGE: INSTRUCTION with PC-  0x44  is of type B 
  EXECUTING ADDI INSTRUCTION with PC:  0x40
  WRITING BACK TO RESISTER FILE Instruction:  0x38
INSTRUCTION CACHE--> 
['0x00158593', '0xFE0006E3', '0x00000A13', '0x00000A93']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
['0x1', '0x2', '0x3', '0x4']
['0x5', '', '', '']
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  104 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0x00042503 From address - 0x34
  DECODE STAGE: INSTRUCTION with PC-  0x30  is of type B 
  EXECUTING BEQ INSTRUCTION with PC:  0x44
  WRITING BACK TO RESISTER FILE Instruction:  0x3c
INSTRUCTION CACHE--> 
['0x00158593', '0xFE0006E3', '0x00000A13', '0x00000A93']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
['0x1', '0x2', '0x3', '0x4']
['0x5', '', '', '']
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  105 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0x00A484B3 From address - 0x38
  DECODE STAGE: INSTRUCTION with PC-  0x34  is of type I 
  EXECUTING BGE INSTRUCTION with PC:  0x30
Control Hazard Detected
  WRITING BACK TO RESISTER FILE Instruction:  0x40
INSTRUCTION CACHE--> 
['0x00158593', '0xFE0006E3', '0x00000A13', '0x00000A93']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
['0x1', '0x2', '0x3', '0x4']
['0x5', '', '', '']
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  106 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0x00000A13 From address - 0x48
  DECODE STAGE WHEN THERE IS A STALL ---------------------------------------->
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
INSTRUCTION CACHE--> 
['0x00158593', '0xFE0006E3', '0x00000A13', '0x00000A93']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
['0x1', '0x2', '0x3', '0x4']
['0x5', '', '', '']
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  107 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0x00000A93 From address - 0x4c
  DECODE STAGE: INSTRUCTION with PC-  0x48  is of type I 
  EXECUTE STAGE WHEN THERE IS A STALL ---------------------------------------->
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
INSTRUCTION CACHE--> 
['0x00158593', '0xFE0006E3', '0x00000A13', '0x00000A93']
['0x000004B3', '0x000005B3', '0x00325C63', '0x00120313']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
['0x1', '0x2', '0x3', '0x4']
['0x5', '', '', '']
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  108 

  READING FROM CACHE MEMORY 
  CONFLICT MISS DETECTED 
  FETCH STAGE: INSTRUCTION - 0x00000B13 From address - 0x50
  DECODE STAGE: INSTRUCTION with PC-  0x4c  is of type I 
  EXECUTING ADDI INSTRUCTION with PC:  0x48
  MEMORY ACCESS STAGE WHEN THERE IS A STALL ------------------------------>
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
INSTRUCTION CACHE--> 
['0x00158593', '0xFE0006E3', '0x00000A13', '0x00000A93']
['0x00000B13', '0xFFFFFFFF', '', '']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
['0x1', '0x2', '0x3', '0x4']
['0x5', '', '', '']
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  109 

  READING FROM CACHE MEMORY 
  FETCH STAGE: INSTRUCTION - 0xFFFFFFFF From address - 0x54
  DECODE STAGE: INSTRUCTION with PC-  0x50  is of type I 
  EXECUTING ADDI INSTRUCTION with PC:  0x4c
  WRITE BACK STAGE WHEN THERE IS A STALL ------------------------------>
INSTRUCTION CACHE--> 
['0x00158593', '0xFE0006E3', '0x00000A13', '0x00000A93']
['0x00000B13', '0xFFFFFFFF', '', '']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
['0x1', '0x2', '0x3', '0x4']
['0x5', '', '', '']
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  110 

  EXECUTING ADDI INSTRUCTION with PC:  0x50
  WRITING BACK TO RESISTER FILE Instruction:  0x48
INSTRUCTION CACHE--> 
['0x00158593', '0xFE0006E3', '0x00000A13', '0x00000A93']
['0x00000B13', '0xFFFFFFFF', '', '']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
['0x1', '0x2', '0x3', '0x4']
['0x5', '', '', '']
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  111 

  WRITING BACK TO RESISTER FILE Instruction:  0x4c
INSTRUCTION CACHE--> 
['0x00158593', '0xFE0006E3', '0x00000A13', '0x00000A93']
['0x00000B13', '0xFFFFFFFF', '', '']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
['0x1', '0x2', '0x3', '0x4']
['0x5', '', '', '']
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  112 

  WRITING BACK TO RESISTER FILE Instruction:  0x50
INSTRUCTION CACHE--> 
['0x00158593', '0xFE0006E3', '0x00000A13', '0x00000A93']
['0x00000B13', '0xFFFFFFFF', '', '']
['0x0063A023', '0x00438393', '0x00120213', '0xFE0006E3']
['0x0035DC63', '0x00042503', '0x00A484B3', '0x00440413']

 DATA CACHE--> 
['0x1', '0x2', '0x3', '0x4']
['0x5', '', '', '']
[0, 0, 0, 0]
[0, 0, 0, 0]
--------------------------------------------------------------------------------
  CLOCK CYCLE:  113 

--------------------------------------------------------------------------------
WRITTEN TO DATA MEMORY
WRITTEN TO REGISTER FILE


