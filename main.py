from PyQt5 import QtWidgets
from ui import Ui_MainWindow
import sys


def put_tab_clicked(self):
    self.ui.in_rf_que_2_box.setVisible(0)


def btn_clicked(self):
    in_index = self.ui.in_categories.currentIndex()
    out_index = self.ui.out_categories.currentIndex()
    if in_index == out_index:
        return out_index
    #     self.ui.out_categories.setCurrentIndex(2)


def clearing_in(self):
    self.ui.in_rf_category.setCurrentIndex(0)
    self.ui.in_rf_stars.setCurrentIndex(0)
    self.ui.in_rf_que_1.setCurrentIndex(0)
    self.ui.in_rf_que_2.setCurrentIndex(0)
    self.ui.in_rk_e.setCurrentIndex(0)
    self.ui.in_rk_f.setCurrentIndex(0)
    self.ui.in_rk_g.setCurrentIndex(0)
    self.ui.in_rk_que_1.setCurrentIndex(0)
    self.ui.in_rk_que_2.setCurrentIndex(0)
    self.ui.in_prms_subclass.setCurrentIndex(0)
    self.ui.in_prms_profit.setCurrentIndex(0)
    self.ui.in_prms_subclass_2.setCurrentIndex(0)


class MainWindow(QtWidgets.QMainWindow):
    def __init__(self):
        super(MainWindow, self).__init__()
        self.ui = Ui_MainWindow()
        self.ui.setupUi(self)
        self.ui.in_categories.currentChanged.connect(lambda: clearing_in(self))


app = QtWidgets.QApplication([])
application = MainWindow()
application.show()

sys.exit(app.exec())
