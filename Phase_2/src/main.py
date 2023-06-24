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
    global Flag
    global arr
    
    current_value=var.get()

    if(current_value=='Sum of Array'):
        Flag=1
        current_value=r"C:\Users\dhruv\Downloads\CS204-Project (2)\CS204-Project\test\sumArray.mc"
    elif(current_value=='Fibbonaci Series'):
        Flag=1
        current_value=r"C:\Users\dhruv\Downloads\CS204-Project (2)\CS204-Project\test\fibbo.mc"
    else:
        Flag=1
        current_value=r"C:\Users\dhruv\Downloads\CS204-Project (2)\CS204-Project\test\bubbleSort.mc"
    
    newWindow = Toplevel(window)
    newWindow.title("New Window")
    newWindow.geometry("700x700")
    newWindow.config(background='white')
    text = Text(newWindow)
    text.place(x=0,y=0,height=630)

    bt2=Button(newWindow,text="REGISTER FILE",bg='midnightblue',fg='white',command=clicked2)
    bt2.place(x=100,y=650)
    bt3=Button(newWindow,text="DATA MEMORY",bg='midnightblue',fg='white',command=clicked3)
    bt3.place(x=210,y=650)
    bt4=Button(newWindow,text="LIVE RUNNING",bg='midnightblue',fg='white',command=clicked4)
    bt4.place(x=340,y=650)
    bt5=Button(newWindow,text="STATISTICS DATA",bg='midnightblue',fg='white',command=clicked5)
    bt5.place(x=450,y=650)

    if(file_value == "0"):
        # keep original stdout
        old_stdout = sys.stdout  
        file = open(r"C:\Users\dhruv\Downloads\CS204-Project (2)\CS204-Project\src\instructions.mc", "w")
        sys.stdout = file  
        
        # assing Redirect with widget Text 
        # sys.stdout = Redirect(text)
        scp1.reset_proc()
        scp1.load_program_memory(current_value)
        scp1.run_riscvsim()
        scp1.write_data_memory()
        file.close()
    
    elif(file_value == "1"):
        # keep original stdout
        old_stdout = sys.stdout  
        file = open(r"C:\Users\dhruv\Downloads\CS204-Project (2)\CS204-Project\src\instructions.mc", "w")
        sys.stdout = file  
        
        # assing Redirect with widget Text 
        # sys.stdout = Redirect(text)
        scp2.reset_proc()
        scp2.load_program_memory(current_value)
        scp2.run_riscvsim()
        scp2.write_data_memory()
        file.close()
        
    elif(file_value == "2"):
        # keep original stdout
        old_stdout = sys.stdout  
        file = open(r"C:\Users\dhruv\Downloads\CS204-Project (2)\CS204-Project\src\instructions.mc", "w")
        sys.stdout = file  
        
        # assing Redirect with widget Text 
        # sys.stdout = Redirect(text)
        scp3.reset_proc()
        scp3.load_program_memory(current_value)
        scp3.run_riscvsim()
        scp3.write_data_memory()
        file.close()
        
    sys.stdout = Redirect(text)
    with open(r"C:\Users\dhruv\Downloads\CS204-Project (2)\CS204-Project\src\instructions.mc",'r') as f:
        for words in f:
            print(words,end = '')        
    sys.stdout = old_stdout
            
    arr = []
    with open(r"C:\Users\dhruv\Downloads\CS204-Project (2)\CS204-Project\src\instructions.mc",'r') as f:
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
    with open(r"C:\Users\dhruv\Downloads\CS204-Project (2)\reg_out.mc",'r') as f:
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
    with open(r"C:\Users\dhruv\Downloads\CS204-Project (2)\data_out.mc",'r') as f:
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
    bt3.place(x=200,y=180)
    bt3["border"]="0"
    bt4=Button(newWindow4,text=" PREV ",bg='midnightblue',fg='white',command=lambda:step("-1"))# We create a button which when clicked will run the function clicked1.we specify its text and colour
    bt4.place(x=260,y=180)
    bt4["border"]="0"
    
    newWindow4.after(5000,lambda:newWindow4.destroy())
   
def clicked5():
    newWindow4 = Toplevel(window)
    newWindow4.title("New Window")
    newWindow4.geometry("500x700")
    newWindow4.config(background='white')
    lb3=Label(newWindow4, text="Data Memory", fg='midnightblue', font=("Helvetica", 22),bg='white')
    lb3.place(x=150, y=0)
    dict = {}
    a = 1
    with open(r"C:\Users\dhruv\Downloads\CS204-Project (2)\stats.mc",'r') as f:
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


lbl=Label(window, text="Single Cycle Simulator", fg='midnightblue', font=("Helvetica", 22),bg='white')
lbl.place(x=130, y=20)
lbl2=Label(window, text="Choose the input file", fg='black', font=("Helvetica", 18),bg='white')
lbl2.place(x=160, y=80)

var = StringVar()
cb=ttk.Combobox(window, textvariable=var)
cb['values']=("Sum of Array", "Fibbonaci Series", "Bubble Sort")
cb['state']='readonly'
cb.place(x=190, y=130)
cb.set("Input File")
global current_value
current_value = cb.get()

bt8=Button(window,text="NON PIPELINE",bg='midnightblue',fg='white',command=lambda:clicked1("0"))# We create a button which when clicked will run the function clicked1.we specify its text and colour
bt8.place(x=60,y=180)# we specify the location of button on windo
bt8["border"]="0"

bt9=Button(window,text="ONLY PIPELINE",bg='midnightblue',fg='white',command=lambda:clicked1("1"))# We create a button which when clicked will run the function clicked1.we specify its text and colour
bt9.place(x=180,y=180)# we specify the location of button on windo
bt9["border"]="0"

bt10=Button(window,text="PIPELINE WITH FORWARDING",bg='midnightblue',fg='white',command=lambda:clicked1("2"))# We create a button which when clicked will run the function clicked1.we specify its text and colour
bt10.place(x=300,y=180)# we specify the location of button on windo
bt10["border"]="0"

window.title('Single Cycle Simulator')
window.geometry("500x500+10+20")
window.config(background='white')

canv = Canvas(master=window)
canv.place(x=100, y=250, width=290, height=531)
img= (Image.open(r"C:\Users\dhruv\Downloads\CS204-Project (2)\CS204-Project\src\img3.png"))

resized_image= img.resize((300,250), Image.ANTIALIAS)

img = ImageTk.PhotoImage(resized_image)
canv.create_image(0, 0, image=img, anchor='nw')

window.mainloop()