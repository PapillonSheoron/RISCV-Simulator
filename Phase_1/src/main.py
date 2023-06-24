from tkinter import *
from tkinter import ttk
import sys
import myRISCVSim as scp
from PIL import Image
from PIL import ImageTk, Image

window=Tk()
#
class Redirect():
    
    def __init__(self, widget):
        self.widget = widget

    def write(self, text):
        self.widget.insert('end', text)

def clicked1():
    global current_value
    global Flag
    current_value=var.get()

    if(current_value=='Sum of Array'):
        Flag=1
        current_value=r"C:\Users\dell\Desktop\CS204-Project\CS204-Project\test\sumArray.mc"
    elif(current_value=='Fibbonaci Series'):
        Flag=1
        current_value=r"C:\Users\dell\Desktop\CS204-Project\CS204-Project\test\fibbo.mc"
    else:
        Flag=1
        current_value=r"C:\Users\dell\Desktop\CS204-Project\CS204-Project\test\bubbleSort.mc"
    
    newWindow = Toplevel(window)
    newWindow.title("Instruction Text Box")
    newWindow.geometry("700x700")
    newWindow.config(background='white')
    text = Text(newWindow)
    text.place(x=0,y=0,height=630)
    # keep original stdout
    old_stdout = sys.stdout    
    # assing Redirect with widget Text 
    sys.stdout = Redirect(text)
    scp.reset_proc()
    scp.load_program_memory(current_value)
    scp.run_riscvsim()
    scp.write_data_memory()
    sys.stdout=old_stdout

    bt2=Button(newWindow,text="REGISTER FILE",bg='midnightblue',fg='white',command=clicked2)
    bt2.place(x=150,y=650)
    bt3=Button(newWindow,text="DATA MEMORY",bg='midnightblue',fg='white',command=clicked3)
    bt3.place(x=280,y=650)

def clicked2():
    global total_columns
    global total_rows
    global lst
    newWindow1 = Toplevel(window)
    newWindow1.title("Register File")
    newWindow1.geometry("500x600")
    newWindow1.config(background='white')
    lb3=Label(newWindow1, text="Register File", fg='midnightblue', font=("Helvetica", 22),bg='white')
    lb3.place(x=150, y=0)
    with open("reg_out.mc",'r') as f:
        Label(newWindow1,text=f.read(),bg='white',anchor="w",justify= LEFT,padx=10,pady=10).place(x=0,y=30)

def clicked3():
    newWindow2 = Toplevel(window)
    newWindow2.title("Data Memory")
    newWindow2.geometry("500x700")
    newWindow2.config(background='white')
    lb3=Label(newWindow2, text="Data Memory", fg='midnightblue', font=("Helvetica", 22),bg='white')
    lb3.place(x=150, y=0)
    with open("data_out.mc",'r') as f:
        Label(newWindow2,text=f.read(),bg='white',anchor="w",justify= LEFT,padx=10,pady=10).place(x=0,y=30)

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

bt1=Button(window,text="ENTER",bg='midnightblue',fg='white',command=clicked1)# We create a button which when clicked will run the function clicked1.we specify its text and colour
bt1.place(x=240,y=180)# we specify the location of button on windo
bt1["border"]="0"

window.title('Single Cycle Simulator')
window.geometry("500x500+10+20")
window.config(background='white')

canv = Canvas(master=window)
canv.place(x=100, y=250, width=290, height=531)
img= (Image.open(r"C:\Users\dell\Desktop\CS204-Project\CS204-Project\src\img3.png"))

resized_image= img.resize((300,250), Image.ANTIALIAS)

img = ImageTk.PhotoImage(resized_image)
canv.create_image(0, 0, image=img, anchor='nw')

window.mainloop()
