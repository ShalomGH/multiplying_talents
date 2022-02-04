# Функции связанные с обработкой ввода и переводом из классификации РФ-2013

def rk_handler(self, element):
    rk_e = self.ui.in_rk_e.currentIndex()
    rk_f = self.ui.in_rk_f.currentIndex()
    rk_g = self.ui.in_rk_g.currentIndex()

    # E = 1.1
    if rk_e == 1:
        self.ui.in_rk_que_1_box.setVisible(0)
        self.ui.in_rk_que_2_box.setVisible(0)
        if element == 1:
            self.ui.in_rk_f.clear()
            self.ui.in_rk_f.addItems([" ", "1.1", "1.2", "1.3", "2.1"])
            self.ui.in_rk_g.setCurrentIndex(0)

        # F = 1.1 and 1.2
        if rk_f in [1, 2] and element == 2:
            self.ui.in_rk_g.clear()
            self.ui.in_rk_g.addItems([" ", "1"])
            self.ui.in_rk_g.setCurrentIndex(1)

        # F = 1.3
        if rk_f == 3 and element == 2:
            self.ui.in_rk_g.clear()
            self.ui.in_rk_g.addItems([" ", "2-3"])
            self.ui.in_rk_g.setCurrentIndex(1)

        # F = 2.1
        if rk_f == 4 and element == 2:
            self.ui.in_rk_g.clear()
            self.ui.in_rk_g.addItems([" ", "1", "2-3"])

    # F = 2.1; G = 1 and 2-3
        if rk_g in [1, 2] and element in [3, 4]:
            if element == 3:
                self.ui.in_rk_que_1.clear()
                self.ui.in_rk_que_1.addItems([" ", "Разрабатываются", "Только разведаны"])
            self.ui.in_rk_que_1_box.setVisible(1)


# E = 1.2
    if rk_e == 2:
        self.ui.in_rk_que_1_box.setVisible(0)
        self.ui.in_rk_que_2_box.setVisible(0)

        if element == 1:
            self.ui.in_rk_f.clear()
            self.ui.in_rk_f.addItems([" ", "1.1", "1.2", "1.3"])
            self.ui.in_rk_g.setCurrentIndex(0)

            # F = 1.1 and 1.2
            if rk_f in [1, 2] and element == 2:
                self.ui.in_rk_g.clear()
                self.ui.in_rk_g.addItems([" ", "1"])
                self.ui.in_rk_g.setCurrentIndex(1)

            # F = 1.3
            if rk_f == 3 and element == 2:
                self.ui.in_rk_g.clear()
                self.ui.in_rk_g.addItems([" ", "2-3"])
                self.ui.in_rk_g.setCurrentIndex(1)


# E = 2
    if rk_e == 3:
        self.ui.in_rk_que_1_box.setVisible(0)
        self.ui.in_rk_que_2_box.setVisible(0)

        if element == 1:
            self.ui.in_rk_f.clear()
            self.ui.in_rk_f.addItems([" ", "1.3", "2.1", "2.2"])
            self.ui.in_rk_g.setCurrentIndex(0)

        # F = 1.3
        if element == 2:
            self.ui.in_rk_g.clear()
            self.ui.in_rk_g.addItems([" ", "1", "2-3"])

        # G = 1
        if rk_g == 1 and element in [3, 4]:
            if element == 3:
                self.ui.in_rk_que_1.clear()
                self.ui.in_rk_que_1.addItems([" ", "Эксплуатируются", "Разрабатываются", "Только разведаны"])
            self.ui.in_rk_que_1_box.setVisible(1)

        # G = 2-3
        if rk_g == 2 and element in [3, 4]:
            if element == 3:
                self.ui.in_rk_que_1.clear()
                self.ui.in_rk_que_1.addItems([" ", "Разрабатываются", "Только разведаны"])
            self.ui.in_rk_que_1_box.setVisible(1)


# E = 3.2
    if rk_e == 4:
        self.ui.in_rk_que_1_box.setVisible(0)
        self.ui.in_rk_que_2_box.setVisible(0)
        if element == 1:
            self.ui.in_rk_f.clear()
            self.ui.in_rk_f.addItems([" ", "1.3", "2.1", "2.2", "3.1", "3.2", "3.3"])
            self.ui.in_rk_g.setCurrentIndex(0)

        # F = 1.3; 2.1;
        if rk_f in [1, 2, 3] and element == 2:
            self.ui.in_rk_g.clear()
            self.ui.in_rk_g.addItems([" ", "1", "2-3"])

    # F = 3.1; 3.2
        if rk_f in [4, 5] and element == 2:
            self.ui.in_rk_g.clear()
            self.ui.in_rk_g.addItems([" ", "4"])
            self.ui.in_rk_g.setCurrentIndex(1)

    # F = 3.3
        if rk_f == 6 and element == 2:
            self.ui.in_rk_g.clear()
            self.ui.in_rk_g.addItems([" ", "4"])
            self.ui.in_rk_g.setCurrentIndex(1)
            self.ui.in_rk_que_2.clear()
            self.ui.in_rk_que_2.addItems([" ", "Плей нефтеносного района", "Плей неизученного района"])
            self.ui.in_rk_que_2_box.setVisible(1)

# E = 3.3
    if rk_e == 5:
        self.ui.in_rk_que_1_box.setVisible(0)
        self.ui.in_rk_que_2_box.setVisible(0)
        if element == 1:
            self.ui.in_rk_f.clear()
            self.ui.in_rk_f.addItems([" ", "1.3", "2.1", "2.2", "4"])
            self.ui.in_rk_g.setCurrentIndex(0)

        # F = 1.3; 2.1; 2.2
        if rk_f in [1, 2, 3] and element == 2:
            self.ui.in_rk_g.clear()
            self.ui.in_rk_g.addItems([" ", "1", "2-3"])

    # F = 4
        if rk_f == 4 and element == 2:
            self.ui.in_rk_g.clear()
            self.ui.in_rk_g.addItems([" ", "1", "2-3", "4"])

        # G = 1
        if rk_g == 1 and element == 3:
            self.ui.in_rk_que_1.clear()
            self.ui.in_rk_que_1.addItems([" ", "Эксплуатируются", "Разрабатываются", "Только разведаны"])
            self.ui.in_rk_que_1_box.setVisible(1)

        # G = 2-3
        if rk_g == 2 and element == 3:
            self.ui.in_rk_que_1.clear()
            self.ui.in_rk_que_1.addItems([" ", "Разрабатываются", "Только разведаны"])
            self.ui.in_rk_que_1_box.setVisible(1)

        # G = 4
        if rk_g == 3 and element == 3:
            self.ui.in_rk_que_2.clear()
            self.ui.in_rk_que_2.addItems([" ", "Частично изучены", "Только локализованы", "Плей нефтеносного района", "Плей неизученного района"])
            self.ui.in_rk_que_2_box.setVisible(1)
