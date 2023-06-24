import math
import pandas as pd

no_of_index_bits=0
sets=0
bo_bits=0
reads=0
read_hits=0
read_misses=0
writes=0
write_hits=0
write_miss=0
cold_miss=0
conflict_miss=0
cache_size=0
block_size=0
associativity=0
mapping=0
lines=0
physical_address=0
flag1=0
flag2=0
cache_type=0
replace=0

def set_parameters(block_size1,cache_size1,mapping1,associativity1,replace1):
    global no_of_index_bits
    global sets
    global bo_bits
    global reads
    global read_hits
    global read_misses
    global writes
    global cache_size
    global block_size
    global associativity
    global lines
    global mapping
    global replace

    cache_size = cache_size1
    block_size = block_size1
    mapping=mapping1
    associativity = associativity1
    replace= replace1

def set_bits(physical_address1):
    global no_of_index_bits
    global sets
    global bo_bits
    global reads
    global read_hits
    global read_misses
    global writes
    global cache_size
    global block_size
    global associativity
    global lines
    global mapping
    global physical_address

    physical_address = bin(int(physical_address1[2:],16))[2:].zfill(32)
    if mapping == 1:
        lines= cache_size//block_size
        sets=lines
        bo_bits= int(math.ceil(math.log((block_size//4),2)))
        no_of_index_bits= int(math.ceil(math.log((lines),2)))
        block_offset = int(physical_address[-(bo_bits):],2)
        tag = int(physical_address[:-(bo_bits+no_of_index_bits)],2)
        index = int(physical_address[-(bo_bits+no_of_index_bits): -(bo_bits)],2)
        return tag,index,block_offset
    
    elif mapping==2:
        lines= cache_size//block_size
        sets = lines//associativity 
        bo_bits= int(math.ceil(math.log((block_size//4),2)))
        no_of_index_bits= int(math.ceil(math.log((sets),2)))
        block_offset = int(physical_address[-(bo_bits):],2)
        tag = int(physical_address[:-(bo_bits+no_of_index_bits)],2)
        index = int(physical_address[-(bo_bits+no_of_index_bits): -(bo_bits)],2)
        return tag,index,block_offset
    
    else:
        lines= cache_size//block_size
        sets = 1 
        bo_bits= int(math.ceil(math.log((block_size//4),2)))
        block_offset = int(physical_address[-(bo_bits):],2)
        tag = int(physical_address[:-(bo_bits)],2)
        return tag,0,block_offset

def update_LRU(cache,index,tag):
    cache[index][tag][1]=associativity
    for i in cache[index].keys():
        if cache[index][i][1]!=0:
            cache[index][i][1]-=1

def plus_Block(cache,physical_address1,Memory,index1,tag1):
    if mapping == 1:
        tag,index,block_offset = set_bits(physical_address1)
    
    elif mapping==2:
        tag,index,block_offset = set_bits(physical_address1)
    
    else:
        tag,index,block_offset = set_bits(physical_address1)
    
    if(index1!=-1):
        index=index1
        cache[index].pop(tag1)
    cache[index][tag]=[[],associativity-1,1]
    physical_address1 = hex(int(physical_address1,16) - int(physical_address1,16)%(block_size//4))
    for i in range(block_size//4):
        if (hex(int(physical_address1,16)+i) in Memory):
            cache[index][tag][0].append(Memory[hex(int(physical_address1,16)+i)])
        else:
            cache[index][tag][0].append("")

def read(cache,physical_address1,Memory):
    global no_of_index_bits
    global sets
    global bo_bits
    global reads
    global read_hits
    global read_misses
    global writes
    global cache_size
    global block_size
    global associativity
    global lines
    global mapping
    global physical_address
    global flag1
    global flag2
    global cache_type
    global write_hits
    global write_miss
    global cold_miss
    global conflict_miss
    global replace

    flag1=0
    flag2=0

    if mapping == 1:
        tag,index,block_offset = set_bits(physical_address1)
    
    elif mapping==2:
        tag,index,block_offset = set_bits(physical_address1)
    
    else:
        tag,index,block_offset = set_bits(physical_address1)
    #  d= { 1 : { 1 : [ [ 1 , 2 , 3 , 4 ] , 0 ] }
    reads+=1
    print("  READING FROM CACHE MEMORY ")
    print("  Tag of The Requested Block         -> ",tag)
    print("  Index of The Requested Block       -> ",index)
    print("  Block Offset of The Requested Block-> ",block_offset)
    if(index not in cache.keys()):
        cache[index]={}
    if(tag not in cache[index].keys()):
        read_misses+=1
        if(cache_type==1):
            flag1=1
        elif(cache_type==2):
            flag2=1
        if(len(cache[index]) < associativity or (not bool(cache[index]))):
            cache[index][tag]={}
            plus_Block(cache,physical_address1,Memory,-1,-1)
            print("  COLD MISS DETECTED ")
            cold_miss+=1
            if(replace==0 or replace==1):
                update_LRU(cache,index,tag)
        else:
            freq=[]
            if(replace==2):
                for i in cache[index].keys():
                    freq.append(cache[index][i][2])
                val=min(freq)
            for i in cache[index].keys():
                if(replace==0 or replace==1):
                    if cache[index][i][1]==0:
                        cache[index][tag]={}
                        plus_Block(cache,physical_address1,Memory,index,i)
                        print("  CONFLICT MISS DETECTED ")
                        print("  Tag of Victim Block-> ",i)
                        print("  Index of Victim Block-> ",index)
                        conflict_miss+=1
                        update_LRU(cache,index,tag)
                        break
                else:
                    if cache[index][i][2]==val:
                        cache[index][tag]={}
                        plus_Block(cache,physical_address1,Memory,index,i)
                        print("  CONFLICT MISS DETECTED ")
                        conflict_miss+=1
                        break
    else:
        read_hits+=1
        cache[index][tag][2]+=1
        if(replace==0):
            update_LRU(cache,index,tag)

    data = cache[index][tag][0][block_offset]
    return data

def Write(cache,physical_address1,data,Memory):
    global no_of_index_bits
    global sets
    global bo_bits
    global reads
    global read_hits
    global read_misses
    global writes
    global cache_size
    global block_size
    global associativity
    global lines
    global mapping
    global physical_address
    global flag1
    global flag2
    global cache_type
    global write_hits
    global write_miss
    global cold_miss
    global conflict_miss

    writes+=1
    print("  WRITING TO CACHE MEMORY AND MAIN MEMORY ")
    if mapping == 1:
        tag,index,block_offset = set_bits(physical_address1)
    
    elif mapping==2:
        tag,index,block_offset = set_bits(physical_address1)
    
    else:
        tag,index,block_offset = set_bits(physical_address1)
    if(index not in cache.keys()):
        cache[index]={}
    if tag in cache[index].keys() :
        cache[index][tag][0][block_offset] = data 
        Memory[physical_address1]=data
        write_hits+=1
    else:
        Memory[physical_address1]=data
        write_miss+=1

def make_table(cache):
    cache_table=[]
    global cache_size
    global block_size
    global associativity
    global mapping
    if mapping == 1:
        lines1= cache_size//block_size
        sets1=lines1
    
    elif mapping==2:
        lines1= cache_size//block_size
        sets1 = lines1//associativity 
    
    else:
        lines1= cache_size//block_size
        sets1 = 1 

    for i in range(sets1):
        if(i in cache.keys()):
            for j in cache[i].keys():
                cache_table.append(cache[i][j][0])
            for j in range((lines1//sets1) - len(cache[i])):
                row=[]
                for k in range(block_size//4):
                    row.append(0)
                cache_table.append(row)
        else:
            for j in range(lines1//sets1):
                row=[]
                for k in range(block_size//4):
                    row.append(0)
                cache_table.append(row)
    for i in cache_table:
        print(i)

def stats_cache():
    global no_of_index_bits
    global sets
    global bo_bits
    global reads
    global read_hits
    global read_misses
    global writes
    global cache_size
    global block_size
    global associativity
    global lines
    global mapping
    global physical_address
    global flag1
    global flag2
    global cache_type
    global write_hits
    global write_miss
    global cold_miss
    global conflict_miss
    fip = open("stats_cache.mc", "w")
    fip.write("Total Reads From Cache                   -> "+ str(reads) + "\n")
    fip.write("Total Writes From Cache                  -> "+ str(writes) + "\n")
    fip.write("Total Read Hits                          -> "+ str(read_hits) + "\n")
    fip.write("Total Read Misses                        -> "+ str(read_misses) + "\n")
    fip.write("Total Write Hits                         -> "+ str(write_hits) + "\n")
    fip.write("Total Write Misses                       -> "+ str(write_miss) + "\n")
    fip.write("Total Cold Misses                        -> "+ str(cold_miss) + "\n")
    fip.write("Total Conflict Misses                    -> "+ str(conflict_miss) + "\n")
