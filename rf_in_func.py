# Функции связанные с обработкой ввода и переводом из классификации РФ-2013
from keys_rf_rk import keys_rf_to_rk
from keys_rf_prms import keys_rf_to_prms
from out_func import out_cleaning


# обработчик вводных данных рф-2013
def rf_handler(self, element):
    out_cleaning(self)
    rf_letter = self.ui.in_rf_category.currentIndex()
    rf_stars = self.ui.in_rf_stars.currentIndex()
    que_1 = self.ui.in_rf_que_1.currentIndex()

    if element == 1:
        self.ui.in_rf_stars.setCurrentIndex(0)

    if element in [1, 2]:
        self.ui.in_rf_que_1.setCurrentIndex(0)
        self.ui.in_rf_que_2.setCurrentIndex(0)

    # нулевой ввод в первый выпадающий список
    if rf_letter == 0:
        self.ui.in_rf_stars.setVisible(0)
        self.ui.in_rf_que_1_box.setVisible(0)
        self.ui.in_rf_que_2_box.setVisible(0)

    # обработка категорий А, В1, В2
    if rf_letter in [1, 2, 3]:
        self.ui.in_rf_stars.setTabVisible(1, 1)
        self.ui.in_rf_stars.setVisible(1)

        # А, В1, В2 без звёздочек
        if rf_stars == 0:
            self.ui.in_rf_que_2_box.setVisible(0)
            if element in [1, 2, 4]:
                self.ui.in_rf_que_1.clear()
                self.ui.in_rf_que_1.addItems([" ", "Рентабельны", "Добываются в убыток"])
                self.ui.in_rf_que_1_box.setVisible(1)

        # А, В1, В2 с 1 звёздочкой
        if rf_stars == 1:
            self.ui.in_rf_que_2_box.setVisible(0)
            if element not in [3, 4]:
                self.ui.in_rf_que_2_box.setVisible(0)
                self.ui.in_rf_que_1.clear()
                self.ui.in_rf_que_1.addItems([" ", "Рентабельны", "Рентабельны в перспективе"])
                self.ui.in_rf_que_1_box.setVisible(1)

            if que_1 == 0:
                self.ui.in_rf_que_2_box.setVisible(0)
                self.ui.in_rf_que_2.setCurrentIndex(0)

            if que_1 == 1:
                self.ui.in_rf_que_2_box.setVisible(0)
                self.ui.in_rf_que_2.clear()
                self.ui.in_rf_que_2.addItems([" ", "Проект ведётся"])
                self.ui.in_rf_que_2.setCurrentIndex(1)

            if element == 3 and que_1 == 2:
                self.ui.in_rf_que_2.clear()
                self.ui.in_rf_que_2.addItems([" ", "Проект ведётся", "Проект на утверждении", "Проект задержан"])
                self.ui.in_rf_que_2_box.setVisible(1)
            if element == 4:
                self.ui.in_rf_que_2_box.setVisible(1)

        # А, В1, В2 с 2 звёздочками
        if rf_stars == 2:
            self.ui.in_rf_que_1_box.setVisible(0)
            self.ui.in_rf_que_2_box.setVisible(0)

    # обработка С1, С2, D0, Dл, D1, D2
    if rf_letter in [4, 5, 6, 7, 8, 9]:
        self.ui.in_rf_stars.setTabVisible(1, 0)
        self.ui.in_rf_stars.setVisible(1)

        # обработка С1, С2
        if rf_letter in [4, 5]:
            # С1, С2 без звёздочек
            self.ui.in_rf_que_1_box.setVisible(1)
            if element not in [3, 4]:
                self.ui.in_rf_que_1.clear()
                self.ui.in_rf_que_1.addItems(
                    [" ", "Рентабельны", "Рентабельны в перспективе", "Рентабельность не известна", "Не рентабельны"])

            if que_1 == 1:
                self.ui.in_rf_que_2_box.setVisible(0)
                self.ui.in_rf_que_2.clear()
                self.ui.in_rf_que_2.addItems([" ", "Проект ведётся"])
                self.ui.in_rf_que_2.setCurrentIndex(1)

            if element != 4 and que_1 == 2:
                self.ui.in_rf_que_2.clear()
                self.ui.in_rf_que_2.addItems(
                    [" ", "Проектирование ведётся", "Проект на утверждении", "Проектирование задержано"])
                self.ui.in_rf_que_2_box.setVisible(1)

            if element != 4 and que_1 in [3, 4]:
                self.ui.in_rf_que_2.clear()
                self.ui.in_rf_que_2.addItems(
                    [" ", "Проектирование ведётся", "Проект на утверждении", "Проектирование задержано",
                     "Проектирование не планируется"])
                self.ui.in_rf_que_2_box.setVisible(1)

            if element != 4 and que_1 == 3:
                self.ui.in_rf_que_2.clear()
                self.ui.in_rf_que_2.addItems(
                    [" ", "Проектирование ведётся", "Проект на утверждении", "Проектирование задержано"])
                self.ui.in_rf_que_2_box.setVisible(1)

            # С1, С2 с 2 звёздочками
            if rf_stars == 2:
                self.ui.in_rf_que_1_box.setVisible(0)
                self.ui.in_rf_que_2_box.setVisible(0)

        # обработка D0, Dл, D1, D2
        if rf_letter in [6, 7, 8, 9]:
            self.ui.in_rf_que_1_box.setVisible(0)
            self.ui.in_rf_que_2_box.setVisible(0)
    rf_rk_translator(self)
    rk_prms_translator(self)


def rf_rk_translator(self):
    in_index = self.ui.in_categories.currentIndex()
    out_index = self.ui.out_categories.currentIndex()
    if in_index == 0 and out_index == 1:
        rf_letter = self.ui.in_rf_category.currentIndex()
        rf_stars = self.ui.in_rf_stars.currentIndex()
        que_1 = self.ui.in_rf_que_1.currentIndex()
        que_2 = self.ui.in_rf_que_2.currentIndex()
        cat = str(rf_letter) + " " + str(rf_stars) + " " + str(que_1) + " " + str(que_2)
        print(cat)
        if keys_rf_to_rk.get(cat):
            print("true")
            self.ui.out_rk_superclass.setText(keys_rf_to_rk[cat][0])
            self.ui.out_rk_class.setText(keys_rf_to_rk[cat][1])
            self.ui.out_rk_subclass.setText(keys_rf_to_rk[cat][2])
            self.ui.out_rk_e_num.setText(keys_rf_to_rk[cat][3])
            self.ui.out_rk_f_num.setText(keys_rf_to_rk[cat][4])
            self.ui.out_rk_g_num.setText(keys_rf_to_rk[cat][5])


def rk_prms_translator(self):
    in_index = self.ui.in_categories.currentIndex()
    out_index = self.ui.out_categories.currentIndex()
    if in_index == 0 and out_index == 2:
        rf_letter = self.ui.in_rf_category.currentIndex()
        rf_stars = self.ui.in_rf_stars.currentIndex()
        que_1 = self.ui.in_rf_que_1.currentIndex()
        que_2 = self.ui.in_rf_que_2.currentIndex()
        cat = str(rf_letter) + " " + str(rf_stars) + " " + str(que_1) + " " + str(que_2)
        print(cat)
        if keys_rf_to_prms.get(cat):
            print("true")
            self.ui.out_prms_superclass.setText(keys_rf_to_prms[cat][0])
            self.ui.out_prms_class.setText(keys_rf_to_prms[cat][1])
            self.ui.out_prms_subclass.setText(keys_rf_to_prms[cat][2])
