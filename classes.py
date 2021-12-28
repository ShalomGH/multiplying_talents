from PySide6.QtCore import QObject, Slot, Signal
from key import keys, keys_efg
from CategoryHandler import CategoryHandler


class Backend(QObject):
    def __init__(self):
        QObject.__init__(self)

    isVisible1 = Signal(bool)
    isVisible_d1 = Signal(bool)

    isVisible2 = Signal(bool)
    isVisible_d2 = Signal(bool)

    isVisible3 = Signal(bool)
    isVisible_d3 = Signal(bool)

    isVisible4 = Signal(bool)
    isVisible_d4 = Signal(bool)

    isVisible5 = Signal(bool)
    isVisible_d5 = Signal(bool)

    isVisible6 = Signal(bool)
    isVisible_d6 = Signal(bool)

    @Slot(int, int)
    def standards(self, input_cat, output_cat):
        print(input_cat, output_cat)

    @Slot(list)
    def read_categories(self, input_categories):
        print(input_categories)

    @Slot()
    def print(self):
        print("test")

    @Slot(list, int)
    def read_category(self, category_values, category_num):

        if category_num == 1:
            category_1 = CategoryHandler(category_values, self.isVisible1, self.isVisible_d1)
            category_1.visibility()

        if category_num == 2:
            category_2 = CategoryHandler(category_values, self.isVisible2, self.isVisible_d2)
            category_2.visibility()

        if category_num == 3:
            category_3 = CategoryHandler(category_values, self.isVisible3, self.isVisible_d3)
            category_3.visibility()

        if category_num == 4:
            category_4 = CategoryHandler(category_values, self.isVisible4, self.isVisible_d4)
            category_4.visibility()

        if category_num == 5:
            category_5 = CategoryHandler(category_values, self.isVisible5, self.isVisible_d5)
            category_5.visibility()

        if category_num == 6:
            category_6 = CategoryHandler(category_values, self.isVisible5, self.isVisible_d6)
            category_6.visibility()

