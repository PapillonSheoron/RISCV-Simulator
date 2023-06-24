from tkinter import *
from tkinter import ttk
import sys

import myRISCVSim_normal as scp1
import myRISCVSim as scp2
import myRISCVSim_fowd as scp3

from PIL import Image
from PIL import ImageTk, Image

from tkintertable import TableCanvas, TableModel
from tkintertable.Tables import TableCanvas
from tkintertable.TableModels import TableModel
from tkinter import *
from tkinter import ttk
from PIL import Image
from PIL import ImageTk, Image
from tkintertable.Tables import TableCanvas
from tkintertable.TableModels import TableModel
from tkintertable import TableCanvas, TableModel
from tkinter import *
from tkinter import ttk
import sys
from PIL import Image
from PIL import ImageTk, Image
arr = []
global entry
global pointer
global ind

window=Tk()

class Redirect():
    
    def __init__(self, widget):
        self.widget = widget

    def write(self, text):
        self.widget.insert('end', text)

def clicked1(file_value):
    
    global current_value
    global block_size
    global cache_size
    global mapping
    global associativity
    global replace
    global Flag
    global arr
    
    current_value=var.get()
    block_size=entry.get()
    cache_size=entry1.get()
    mapping=var1.get()
    replace=var2.get()
    associativity=entry2.get()
    if(mapping=='Direct Mapping'):
        mapping=1
    elif(mapping=='Set Associative'):
        mapping=2
    else:
        mapping=3

    if(replace=="LRU"):
        replace=0
    elif(replace=="FIFO"):
        replace=1
    elif(replace=="LFU"):
        replace=2
    else:
        replace=0
    block_size=int(block_size)
    cache_size=int(cache_size)
    associativity=int(associativity)
    if(current_value=='Sum of Array'):
        Flag=1
        current_value=r"C:\Users\dell\Downloads\CS204-Project (2)\Phase_3\test\sumArray.mc"
    elif(current_value=='Fibbonaci Series'):
        Flag=1
        current_value=r"C:\Users\dell\Downloads\CS204-Project (2)\Phase_3\test\fibbo.mc"
    else:
        Flag=1
        current_value=r"C:\Users\dell\Downloads\CS204-Project (2)\Phase_3\test\bubbleSort.mc"
    
    newWindow = Toplevel(window)
    newWindow.title("New Window")
    newWindow.geometry("700x700")
    newWindow.config(background='white')
    v = Scrollbar(newWindow)
    v.pack(side = RIGHT, fill = Y)
    text = Text(newWindow,yscrollcommand = v.set)
    text.place(x=0,y=0,height=630)
    v.config(command=text.yview)

    bt2=Button(newWindow,text="REGISTER FILE",bg='midnightblue',fg='white',command=clicked2)
    bt2.place(x=90,y=650)
    bt3=Button(newWindow,text="DATA MEMORY",bg='midnightblue',fg='white',command=clicked3)
    bt3.place(x=190,y=650)
    bt4=Button(newWindow,text="LIVE RUNNING",bg='midnightblue',fg='white',command=clicked4)
    bt4.place(x=295,y=650)
    bt5=Button(newWindow,text="STATISTICS DATA",bg='midnightblue',fg='white',command=clicked5)
    bt5.place(x=395,y=650)
    bt6=Button(newWindow,text="CACHE  DATA",bg='midnightblue',fg='white',command=clicked6)
    bt6.place(x=510,y=650)

    if(file_value == "0"):
        # keep original stdout
        old_stdout = sys.stdout  
        file = open(r"C:\Users\dell\Downloads\CS204-Project (2)\Phase_3\src\instructions.mc", "w")
        sys.stdout = file  
        
        # assing Redirect with widget Text 
        # sys.stdout = Redirect(text)
        scp1.reset_proc()
        scp1.load_program_memory(current_value,block_size,cache_size,mapping,associativity,replace)
        scp1.run_riscvsim()
        scp1.write_data_memory()
        file.close()
    
    elif(file_value == "1"):
        # keep original stdout
        old_stdout = sys.stdout  
        file = open(r"C:\Users\dell\Downloads\CS204-Project (2)\Phase_3\src\instructions.mc", "w")
        sys.stdout = file  
        
        # assing Redirect with widget Text 
        # sys.stdout = Redirect(text)
        scp2.reset_proc()
        scp2.load_program_memory(current_value,block_size,cache_size,mapping,associativity,replace)
        scp2.run_riscvsim()
        scp2.write_data_memory()
        file.close()
        
    elif(file_value == "2"):
        # keep original stdout
        old_stdout = sys.stdout  
        file = open(r"C:\Users\dell\Downloads\CS204-Project (2)\Phase_3\src\instructions.mc", "w")
        sys.stdout = file  
        
        # assing Redirect with widget Text 
        # sys.stdout = Redirect(text)
        scp3.reset_proc()
        scp3.load_program_memory(current_value,block_size,cache_size,mapping,associativity,replace)
        scp3.run_riscvsim()
        scp3.write_data_memory()
        file.close()
        
    sys.stdout = Redirect(text)
    with open(r"C:\Users\dell\Downloads\CS204-Project (2)\Phase_3\src\instructions.mc",'r') as f:
        for words in f:
            print(words,end = '')        
    sys.stdout = old_stdout
            
    arr = []
    with open(r"C:\Users\dell\Downloads\CS204-Project (2)\Phase_3\src\instructions.mc",'r') as f:
            t = []
            for words in f:
                if(words[0] != '-'):
                    t.append(words)
                else:
                    arr.append(t)
                    t = []
    
def clicked2():
    global total_columns
    global total_rows
    global lst
    newWindow1 = Toplevel(window)
    newWindow1.title("New Window")
    newWindow1.geometry("500x600")
    newWindow1.config(background='white')
    lb3=Label(newWindow1, text="Register File", fg='midnightblue', font=("Helvetica", 22),bg='white')
    lb3.place(x=150, y=0)
    dict = {}
    a = 1
    with open(r"C:\Users\dell\Downloads\CS204-Project (2)\reg_out.mc",'r') as f:
        for words in f:
            tmp = words.split()
            if(tmp == []): return
            dict['row' + str(a)] = {'Resistor Name' : "                    " + tmp[0] + "                ", 'Value': "                    " + tmp[1] + "                "}
            a = a + 1
    tframe = Frame(newWindow1)
    tframe.pack(expand = True)
    table = TableCanvas(tframe, data = dict)
    table.show()

def clicked3():
    newWindow2 = Toplevel(window)
    newWindow2.title("New Window")
    newWindow2.geometry("500x700")
    newWindow2.config(background='white')
    lb3=Label(newWindow2, text="Data Memory", fg='midnightblue', font=("Helvetica", 22),bg='white')
    lb3.place(x=150, y=0)
    dict = {}
    a = 1
    with open(r"C:\Users\dell\Downloads\CS204-Project (2)\data_out.mc",'r') as f:
        for words in f:
            tmp = words.split()
            if(tmp == []): return
            dict['row' + str(a)] = {' Memory Address ' : "                 " + tmp[0] + "                ", 'Value' : "                " + tmp[1] + "                "}
            a = a + 1
    tframe = Frame(newWindow2)
    tframe.pack(expand = True)
    table = TableCanvas(tframe, data = dict)
    table.show()

def clicked4():
    global arr
    global pointer
    global entry
    global ind
    
    newWindow3 = Toplevel(window)
    newWindow3.title("New Window")
    newWindow3.geometry("500x700")
    newWindow3.config(background='white')
    
    #Initialize a Label to display the User Input
    label=Label(newWindow3, text= "Enter The Instruction Number", font=("Courier 22 bold"))
    label.pack()

    #Create an Entry widget to accept User Input
    entry= Entry(newWindow3, width= 40)
    entry.focus_set()
    entry.pack()

    ttk.Button(newWindow3, text= "Submit",width= 20, command=lambda:step("0")).pack(pady=20)
    
def step(t):
    
    global pointer
    global entry
    global ind
    
    newWindow4 = Toplevel(window)
    newWindow4.title("New Window")
    newWindow4.geometry("500x700")
    newWindow4.config(background='white')
    
    if t == "0":
        pointer = entry.get()
        ind = int(pointer)
        s = ""
        for i in arr[ind]:
            s += i
            s += " "
        Label(newWindow4,text = s,bg='white',anchor="w",justify= LEFT,padx=10,pady=10).place(x=0,y=30)
    
    elif t == "1":   
        ind = int(pointer)
        s = ""
        ind = ind + 1
        pointer = str(ind)
        for i in arr[ind]:
            s += i
            s += " "
        Label(newWindow4,text = s,bg='white',anchor="w",justify= LEFT,padx=10,pady=10).place(x=0,y=30)
        
    elif t == "-1":   
        ind = int(pointer)
        s = ""
        ind = ind - 1
        pointer = str(ind)
        for i in arr[ind]:
            s += i
            s += " "
        Label(newWindow4,text = s,bg='white',anchor="w",justify= LEFT,padx=10,pady=10).place(x=0,y=30)
    
    bt3=Button(newWindow4,text=" NEXT ",bg='midnightblue',fg='white',command=lambda:step("1"))# We create a button which when clicked will run the function clicked1.we specify its text and colour
    bt3.place(x=200,y=380)
    bt3["border"]="0"
    bt4=Button(newWindow4,text=" PREV ",bg='midnightblue',fg='white',command=lambda:step("-1"))# We create a button which when clicked will run the function clicked1.we specify its text and colour
    bt4.place(x=260,y=380)
    bt4["border"]="0"
    
    newWindow4.after(5000,lambda:newWindow4.destroy())
   
def clicked5():
    newWindow4 = Toplevel(window)
    newWindow4.title("New Window")
    newWindow4.geometry("500x700")
    newWindow4.config(background='white')
    lb3=Label(newWindow4, text="Statictical Data", fg='midnightblue', font=("Helvetica", 22),bg='white')
    lb3.place(x=150, y=0)
    dict = {}
    a = 1
    with open(r"C:\Users\dell\Downloads\CS204-Project (2)\stats.mc",'r') as f:
        for words in f:
            tmp = words.split()
            if(tmp == []): return
            s = ""
            for i in range(len(tmp) - 1):
                s = s + tmp[i] + "  " 
            dict['row' + str(a)] = {' Type of ' : s , 'Value' : "                  " + tmp[len(tmp) - 1] + "                "}
            a = a + 1
    tframe = Frame(newWindow4)
    tframe.pack(expand = True)
    table = TableCanvas(tframe, data = dict)
    table.show()

def clicked6():
    newWindow4 = Toplevel(window)
    newWindow4.title("New Window")
    newWindow4.geometry("500x700")
    newWindow4.config(background='white')
    lb3=Label(newWindow4, text="Cache Data ", fg='midnightblue', font=("Helvetica", 22),bg='white')
    lb3.place(x=150, y=0)
    dict = {}
    a = 1
    with open(r"C:\Users\dell\Downloads\CS204-Project (2)\stats_cache.mc",'r') as f:
        for words in f:
            tmp = words.split()
            if(tmp == []): return
            s = ""
            for i in range(len(tmp) - 1):
                s = s + tmp[i] + "  " 
            dict['row' + str(a)] = {' Type of ' : s , 'Value' : "                  " + tmp[len(tmp) - 1] + "                "}
            a = a + 1
    tframe = Frame(newWindow4)
    tframe.pack(expand = True)
    table = TableCanvas(tframe, data = dict)
    table.show()


lbl=Label(window, text="RISCV Simulator", fg='midnightblue', font=("Helvetica", 18),bg='white')
lbl.place(x=170, y=10)


lbl6=Label(window, text="Input File", fg='black', font=("Helvetica",10),bg='white')
lbl6.place(x=60, y=70)
var = StringVar()
cb=ttk.Combobox(window, textvariable=var)
cb['values']=("Sum of Array", "Fibbonaci Series", "Bubble Sort")
cb['state']='readonly'
cb.place(x=200, y=70)
cb.set("Input File")
global current_value
current_value = cb.get()

lbl3=Label(window, text="Enter Block Size", fg='black', font=("Helvetica",10),bg='white')
lbl3.place(x=60, y=100)
entry= Entry(window, width= 22)
entry.focus_set()
entry.place(x=200, y=100)
global block_size
block_size=entry.get()

lbl4=Label(window, text="Enter Cache Size", fg='black', font=("Helvetica",10),bg='white')
lbl4.place(x=60, y=130)
entry1= Entry(window, width= 22)
entry1.focus_set()
entry1.place(x=200, y=130)
global cache_size
cache_size=entry1.get()


lbl7=Label(window, text="Choose Mapping", fg='black', font=("Helvetica",10),bg='white')
lbl7.place(x=60, y=160)
var1 = StringVar()
cb1=ttk.Combobox(window, textvariable=var1)
cb1['values']=("Direct Mapping", "Set Associative", "Fully Associative")
cb1['state']='readonly'
cb1.place(x=200, y=160)
cb1.set("Mapping")
global mapping
mapping = cb1.get()

lbl5=Label(window, text="Enter Associativity", fg='black', font=("Helvetica",10),bg='white')
lbl5.place(x=60, y=190)
entry2= Entry(window, width= 22)
entry2.focus_set()
entry2.place(x=200, y=190)
global associativity
associativity=entry2.get()


lbl8=Label(window, text="Replacement Policy", fg='black', font=("Helvetica",10),bg='white')
lbl8.place(x=60, y=220)
var2 = StringVar()
cb2=ttk.Combobox(window, textvariable=var2)
cb2['values']=("LRU", "FIFO", "LFU","RANDOM")
cb2['state']='readonly'
cb2.place(x=200, y=220)
cb2.set("Replacement Policy")
global replace
replace = cb2.get()

bt8=Button(window,text="NON PIPELINE",bg='midnightblue',fg='white',command=lambda:clicked1("0"))# We create a button which when clicked will run the function clicked1.we specify its text and colour
bt8.place(x=105,y=260)# we specify the location of button on windo
bt8["border"]="0"

bt9=Button(window,text="ONLY PIPELINE",bg='midnightblue',fg='white',command=lambda:clicked1("1"))# We create a button which when clicked will run the function clicked1.we specify its text and colour
bt9.place(x=225,y=260)# we specify the location of button on windo
bt9["border"]="0"

bt10=Button(window,text="PIPELINE WITH FORWARDING",bg='midnightblue',fg='white',command=lambda:clicked1("2"))# We create a button which when clicked will run the function clicked1.we specify its text and colour
bt10.place(x=345,y=260)# we specify the location of button on windo
bt10["border"]="0"

window.title('Single Cycle Simulator')
window.geometry("600x600+20+20")
window.config(background='white')

canv = Canvas(master=window)
canv.place(x=150, y=300, width=290, height=531)
img= (Image.open(r"C:\Users\dell\Downloads\CS204-Project (2)\Phase_3\src\img3.png"))

resized_image= img.resize((300,250), Image.ANTIALIAS)

img = ImageTk.PhotoImage(resized_image)
canv.create_image(0, 0, image=img, anchor='nw')

window.mainloop()