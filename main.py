import sys
from PyQt5.QtWidgets import QWidget, QToolTip, QPushButton, QApplication, QMainWindow
from PyQt5.QtGui import QFont


class Window(QMainWindow):
    def __init__(self):
        super(Window, self).__init__()

        self.setWindowTitle("Programm")
        self.setGeometry(200, 200, 480, 320)

    def switch(self):
        print("lol")


def application():
    app = QApplication(sys.argv)
    window = Window()

    window.show()
    sys.exit(app.exec_())


if __name__ == '__main__':
    application()
