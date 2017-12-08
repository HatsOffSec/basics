import socket


def Main():
# change host and port to required values
    host = '127.0.0.1'
    port = 22

    mySocket = socket.socket()
    mySocket.connect((host, port))

    message = input(" -> ")

# Use 'q' to quit 
    while message != 'q':
        mySocket.send(message.encode())
        data = mySocket.recv(1024).decode()

        print('Receiveved from sever: ' + data)

        message = input(" -> ")

    mySocket.close()


if __name__ == '__main__':
    Main()
