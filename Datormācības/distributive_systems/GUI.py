#!/usr/bin/python3
#*-* coding: utf-8 -*-

# Just tkinter practice, nothing to see here

import random
import tkinter as tk

window  = tk.Tk()
window.title("Sveicināts _____")
window.geometry("400x400")

# Functions
def phrase_generator():

    phrases = ["Labdien ", "Sveicināts ", "Čau "]
    name = str(entry1.get())

    return phrases[random.randint(0,3)] + name

def phrase_display():

    greeting = phrase_generator()

    #text field
    greeting_display = tk.Text(master=window, height = 10, width=30)
    greeting_display.grid(column=0, row=3)

    greeting_display.insert(tk.END, greeting)


# Labels
label1 = tk.Label(text="Prieks, ka lietojat mūsu aplikāciju!")
label1.grid(column=0, row=0)

label2 = tk.Label(text="Kā jūs sauc?")
label2.grid(column=0, row=1)

# Entry fields
entry1 = tk.Entry()
entry1.grid(column=1, row=1)

# button
button1 = tk.Button(text="OK", command=phrase_display)
button1.grid(column=0, row=2)



window.mainloop()
