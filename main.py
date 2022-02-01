from PyQt5 import QtWidgets
from ui import Ui_MainWindow
import sys


class MainWindow(QtWidgets.QMainWindow):
    def __init__(self):
        super(MainWindow, self).__init__()
        self.ui = Ui_MainWindow()
        self.ui.setupUi(self)
        self.ui.in_rf_category.activated.connect(self.btn_clicked)

    def btn_clicked(self):
        print("in_rf_category")


app = QtWidgets.QApplication([])
application = MainWindow()
application.show()

sys.exit(app.exec())
