from PyQt5 import QtWidgets
from ui import Ui_MainWindow
from rf_in_func import rf_handler, rf_rk_translator
from rk_in_func import rk_handler
import sys


# def btn_clicked(self):
#     in_index = self.ui.in_categories.currentIndex()
#     out_index = self.ui.out_categories.currentIndex()
#     if in_index == out_index:
#         return out_index
#     #     self.ui.out_categories.setCurrentIndex(2)


# функция отчистки вводных категорий
def clearing_input(self):
    self.ui.in_rf_category.setCurrentIndex(0)
    self.ui.in_rf_stars.setCurrentIndex(0)
    self.ui.in_rf_que_1.setCurrentIndex(0)
    self.ui.in_rf_que_2.setCurrentIndex(0)
    self.ui.in_rk_e.setCurrentIndex(0)
    self.ui.in_rk_f.setCurrentIndex(0)
    self.ui.in_rk_g.setCurrentIndex(0)
    self.ui.in_rk_que_1.setCurrentIndex(0)
    self.ui.in_rk_que_2.setCurrentIndex(0)
    self.ui.in_prms_que_1.setCurrentIndex(0)
    self.ui.in_prms_que_2.setCurrentIndex(0)
    self.ui.in_prms_que_3.setCurrentIndex(0)
    self.ui.in_prms_que_4.setCurrentIndex(0)
    self.ui.in_prms_que_5.setCurrentIndex(0)


def off_visible(self):
    self.ui.in_rf_stars.setVisible(0)
    self.ui.in_rf_que_1_box.setVisible(0)
    self.ui.in_rf_que_2_box.setVisible(0)


class MainWindow(QtWidgets.QMainWindow):
    def __init__(self):
        super(MainWindow, self).__init__()
        self.ui = Ui_MainWindow()
        self.ui.setupUi(self)
        off_visible(self)
        self.ui.in_categories.currentChanged.connect(lambda: clearing_input(self))

        # self.ui.out_categories.currentChanged.connect(lambda: tab_plus(self))

        # обработка нажатий в классификации РФ-2013
        self.ui.in_rf_category.activated.connect(lambda: rf_handler(self, 1))
        self.ui.in_rf_stars.currentChanged .connect(lambda: rf_handler(self, 2))
        self.ui.in_rf_que_1.activated.connect(lambda: rf_handler(self, 3))
        self.ui.in_rf_que_2.activated.connect(lambda: rf_handler(self, 4))

        self.ui.in_rk_e.activated.connect(lambda: rk_handler(self, 1))
        self.ui.in_rk_f.activated.connect(lambda: rk_handler(self, 2))
        self.ui.in_rk_g.activated.connect(lambda: rk_handler(self, 3))


app = QtWidgets.QApplication([])
application = MainWindow()
application.show()

sys.exit(app.exec())
