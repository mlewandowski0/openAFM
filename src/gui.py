import tkinter as tk
#from tkinter import ttk
from matplotlib.figure import Figure
from matplotlib.backends.backend_tkagg import FigureCanvasTkAgg


class Controller:
    def __init__(self , name="Conntroller"):
        self.window = tk.Tk()
        self.window.title(name)
        self.window.withdraw()
        self.window.protocol('WM_DELETE_WINDOW', self.destroyWindow)
        self.addChannel()

    def destroyWindow(self):
        self.window.quit()
        self.window.destroy()

    def addChannel(self):
        tk.Label(self.window, text="A Label").grid(column=0, row=0)

        fig = Figure(figsize=(12, 8), facecolor='white')
        axis = fig.add_subplot(211)

        xValues = [1,2,3,4]
        yValues = [5,7,6,8]
        axis.plot(xValues, yValues)
        axis.set_xlabel('time [ s ]')
        axis.set_ylabel('Voltage [ V ]')
        axis.grid(linestyle='-')

        canvas = FigureCanvasTkAgg(fig, master=self.window)
        canvas._tkcanvas.pack(side=tk.TOP, fill=tk.BOTH, expand=1)


        # add float entry widget
        adcVal1 = tk.StringVar()
        adcVal1Entered = tk.Entry(self.window, width=12, textvariable="adcVal1")
        adcVal1Entered.grid(column=0, row=2)

        # add button to approve entering
        approve = tk.Button(self.window, text="Set", command=self.setADCValue)
        approve.grid(column=0, row=3)

        self.window.update()
        self.window.deiconify()

    def setADCValue(self):
        print('xd')

    def run(self):
        self.window.mainloop()
