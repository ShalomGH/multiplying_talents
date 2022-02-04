# Функции связанные с обработкой ввода и переводом из классификации РФ-2013

# обработчик вводных данных рф-2013
import ui


def rf_handler(self, element):
    rf_letter = self.ui.in_rf_category.currentIndex()
    rf_stars = self.ui.in_rf_stars.currentIndex()

    # нулевой ввод в первый выпадающий список
    if rf_letter == 0:
        self.ui.in_rf_stars.setCurrentIndex(0)
        self.ui.in_rf_stars.setVisible(0)
        self.ui.in_rf_que_1_box.setVisible(0)
        self.ui.in_rf_que_2_box.setVisible(0)

    # обработка категорий А, В1, В2
    if rf_letter in [1, 2, 3]:
        self.ui.in_rf_stars.setTabVisible(1, 1)
        self.ui.in_rf_stars.setVisible(1)

        # А, В1, В2 без звёздочек
        if rf_stars == 0:
            if element != 3:
                self.ui.in_rf_que_1.clear()
                self.ui.in_rf_que_1.addItems([" ", "Рентабельны", "Добываются в убыток"])
                self.ui.in_rf_que_1_box.setVisible(1)
                self.ui.in_rf_que_2_box.setVisible(0)
            rf_rk_translator(self)

        # А, В1, В2 с 1 звёздочкой
        if rf_stars == 1:
            if element not in [3, 4]:
                self.ui.in_rf_que_1.clear()
                self.ui.in_rf_que_1.addItems([" ", "Рентабельны", "Рентабельны в перспективе"])

                self.ui.in_rf_que_2.clear()
                self.ui.in_rf_que_2.addItems([" ", "Проект ведётся", "Проект на утверждении", "Проект задержан"])

                self.ui.in_rf_que_1_box.setVisible(1)
                self.ui.in_rf_que_2_box.setVisible(1)

            rf_rk_translator(self)

        # А, В1, В2 с 2 звёздочками
        if rf_stars == 2:
            self.ui.in_rf_que_1_box.setVisible(0)
            self.ui.in_rf_que_2_box.setVisible(0)

            rf_rk_translator(self)

    # обработка С1, С2, D0, Dл, D1, D2
    if rf_letter in [4, 5, 6, 7, 8, 9]:
        self.ui.in_rf_stars.setTabVisible(1, 0)
        self.ui.in_rf_stars.setVisible(1)

        # обработка С1, С2
        if rf_letter in [4, 5]:
            # С1, С2 без звёздочек
            if rf_stars == 0:
                if element not in [3, 4]:
                    self.ui.in_rf_que_1.clear()
                    self.ui.in_rf_que_1.addItems(
                        [" ", "Рентабельны", "Рентабельны в перспективе", "Рентабельность не известна", "Не рентабельны"])

                    self.ui.in_rf_que_2.clear()
                    self.ui.in_rf_que_2.addItems(
                        [" ", "Проектирование ведётся", "Проект на утверждении", "Проектирование задержано",
                         "Проектирование не планируется"])

                    self.ui.in_rf_que_1_box.setVisible(1)
                    self.ui.in_rf_que_2_box.setVisible(1)

                rf_rk_translator(self)

            # С1, С2 с 2 звёздочками
            if rf_stars == 2:
                self.ui.in_rf_que_1_box.setVisible(0)
                self.ui.in_rf_que_2_box.setVisible(0)
                rf_rk_translator(self)

        # обработка D0, Dл, D1, D2
        if rf_letter in [6, 7, 8, 9]:
            self.ui.in_rf_que_1_box.setVisible(0)
            self.ui.in_rf_que_2_box.setVisible(0)
            rf_rk_translator(self)


def rf_rk_translator(self):
    rf_letter = self.ui.in_rf_category.currentIndex()
    rf_stars = self.ui.in_rf_stars.currentIndex()
    que_1 = self.ui.in_rf_que_1.currentIndex()
    que_2 = self.ui.in_rf_que_2.currentIndex()
    print(rf_letter, rf_stars, que_1, que_2)
