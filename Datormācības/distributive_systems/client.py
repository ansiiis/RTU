#!/usr/bin/env python3
"""Script for Tkinter GUI chat client."""
from socket import AF_INET, socket, SOCK_STREAM
from threading import Thread
import tkinter


def receive():
    """Handles receiving of messages."""
    while True:
        try:
            msg = client_socket.recv(BUFSIZ).decode("utf8")
            msg_list.insert(tkinter.END, msg)
        except OSError:  # Possibly client has left the chat.
            break


def send(event=None):  # event is passed by binders.
    """Handles sending of messages."""
    msg = my_msg.get()
    my_msg.set("")  # Clears input field.
    client_socket.send(bytes(msg, "utf8"))
    if msg == "{aizvērt}":
        client_socket.close()
        top.quit()


def on_closing(event=None):
    """This function is to be called when the window is closed."""
    my_msg.set("{aizvērt}")
    send()

window = tkinter.Tk()
window.title("MansČats")
#window.geometry("1080x1920")

my_color='#f5f5dc'

messages_frame = tkinter.Frame(window)
my_msg = tkinter.StringVar()  # For the messages to be sent.
my_msg.set("")

scrollbar = tkinter.Scrollbar(messages_frame)  # To navigate through past messages.

# Following will contain the messages.
msg_list = tkinter.Listbox(messages_frame, height=30, width=70,
                           yscrollcommand=scrollbar.set, bg=my_color)
scrollbar.pack(side=tkinter.RIGHT, fill=tkinter.Y)
msg_list.pack(side=tkinter.LEFT, fill=tkinter.BOTH)
msg_list.pack()
messages_frame.pack()

entry_field = tkinter.Entry(window, textvariable=my_msg, bg=my_color)
entry_field.bind("<Return>", send)
entry_field.pack()
send_button = tkinter.Button(window, text="Sūtīt", command=send)
send_button.pack()

window.protocol("WM_DELETE_WINDOW", on_closing)

#----Now comes the sockets part----
HOST = input('Enter host: ')
if not HOST:
    HOST='127.0.0.1'
else:
    HOST = int(HOST)

PORT = input('Enter port: ')
if not PORT:
    PORT = 33000
else:
    PORT = int(PORT)

BUFSIZ = 1024
ADDR = (HOST, PORT)

client_socket = socket(AF_INET, SOCK_STREAM)
client_socket.connect(ADDR)

receive_thread = Thread(target=receive)
receive_thread.start()
tkinter.mainloop() # Starts GUI execution.
