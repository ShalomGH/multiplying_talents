from PyQt5 import QtWidgets
from ui import Ui_MainWindow
import sys


def rk_que_handler(self):
    self.ui.in_rf_que_2_box.setVisible(0)


# обработчик вводных данных рф-2013
def rf_handler(self):
    rf_letter = self.ui.in_rf_category.currentIndex()
    rf_stars = self.ui.in_rf_stars.currentIndex()
    que_1 = self.ui.in_rf_que_1.currentIndex()
    que_2 = self.ui.in_rf_que_2.currentIndex()

    # нулевой ввод в первый выпадающий список
    if rf_letter == 0:
        self.ui.in_rf_stars.setCurrentIndex(0)
        self.ui.in_rf_stars.setVisible(0)
        self.ui.in_rf_que_1_box.setVisible(0)
        self.ui.in_rf_que_2_box.setVisible(0)

    # обработка категорий А, В1, В2
    if rf_letter in [1, 2, 3]:
        print("none/*/**")
        self.ui.in_rf_stars.setTabVisible(1, 1)
        self.ui.in_rf_stars.setVisible(1)

        if rf_stars == 0:
            self.ui.in_rf_que_1.clear()
            self.ui.in_rf_que_1.addItems([" ", "Рентабельны", "Добываются в убыток"])
            self.ui.in_rf_que_1_box.setVisible(1)
            self.ui.in_rf_que_2_box.setVisible(0)

        if rf_stars == 1:
            self.ui.in_rf_que_1.clear()
            self.ui.in_rf_que_1.addItems([" ", "Рентабельны", "Рентабельны в перспективе"])

            self.ui.in_rf_que_2.clear()
            self.ui.in_rf_que_2.addItems([" ", "Проект ведётся", "Проект на утверждении", "Проект задержан"])

            self.ui.in_rf_que_1_box.setVisible(1)
            self.ui.in_rf_que_2_box.setVisible(1)

        if rf_stars == 2:
            self.ui.in_rf_que_1_box.setVisible(0)
            self.ui.in_rf_que_2_box.setVisible(0)

    # обработка остальных категорий
    if rf_letter in [4, 5, 6, 7, 8, 9]:
        print(("none/**"))
        self.ui.in_rf_stars.setTabVisible(1, 0)
        self.ui.in_rf_stars.setVisible(1)

        if rf_letter in [4, 5]:
            if rf_stars == 0:
                self.ui.in_rf_que_1.clear()
                self.ui.in_rf_que_1.addItems([" ", "Рентабельны", "Рентабельны в перспективе", "Рентабельность не известна", "Не рентабельны"])

                self.ui.in_rf_que_2.clear()
                self.ui.in_rf_que_2.addItems([" ", "Проектирование ведётся", "Проект на утверждении", "Проектирование задержано", "Проектирование не планируется"])

                self.ui.in_rf_que_1_box.setVisible(1)
                self.ui.in_rf_que_2_box.setVisible(1)

            if rf_stars == 2:
                self.ui.in_rf_que_1_box.setVisible(0)
                self.ui.in_rf_que_2_box.setVisible(0)

        if rf_letter in [6, 7, 8, 9]:
            self.ui.in_rf_que_1_box.setVisible(0)
            self.ui.in_rf_que_2_box.setVisible(0)



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


class MainWindow(QtWidgets.QMainWindow):
    def __init__(self):
        super(MainWindow, self).__init__()
        self.ui = Ui_MainWindow()
        self.ui.setupUi(self)
        self.ui.in_categories.currentChanged.connect(lambda: clearing_input(self))

        # self.ui.out_categories.currentChanged.connect(lambda: tab_plus(self))
        self.ui.in_rf_category.currentIndexChanged.connect(lambda: rf_handler(self))
        self.ui.in_rf_stars.currentChanged.connect(lambda: rf_handler(self))


app = QtWidgets.QApplication([])
application = MainWindow()
application.show()

sys.exit(app.exec())
