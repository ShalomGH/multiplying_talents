from PySide6.QtCore import QObject, Slot, Signal
from CategoryHandler import CategoryHandler
from CategoryChanger import CategoryChanger


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
    isVisible7 = Signal(bool)

    changeLetterCategoryOut1 = Signal(str)
    changeValueCategoryOut1 = Signal(str)
    changeLetterCategoryOut2 = Signal(str)
    changeValueCategoryOut2 = Signal(str)
    changeLetterCategoryOut3 = Signal(str)
    changeValueCategoryOut3 = Signal(str)
    changeLetterCategoryOut4 = Signal(str)
    changeValueCategoryOut4 = Signal(str)
    changeLetterCategoryOut5 = Signal(str)
    changeValueCategoryOut5 = Signal(str)
    changeLetterCategoryOut6 = Signal(str)
    changeValueCategoryOut6 = Signal(str)

    @Slot(list)
    def read_categories(self, input_categories):
        print(input_categories)

    @Slot(list, int)
    def read_category(self, category_values, category_num):
        if category_num == 1:
            category_1 = CategoryHandler(category_values, self.isVisible1, self.isVisible_d1, self.isVisible7)
            category_1.visibility()

        if category_num == 2:
            category_2 = CategoryHandler(category_values, self.isVisible2, self.isVisible_d2, self.isVisible7)
            category_2.visibility()

        if category_num == 3:
            category_3 = CategoryHandler(category_values, self.isVisible3, self.isVisible_d3, self.isVisible7)
            category_3.visibility()

        if category_num == 4:
            category_4 = CategoryHandler(category_values, self.isVisible4, self.isVisible_d4, self.isVisible7)
            category_4.visibility()

        if category_num == 5:
            category_5 = CategoryHandler(category_values, self.isVisible5, self.isVisible_d5, self.isVisible7)
            category_5.visibility()

        if category_num == 6:
            category_6 = CategoryHandler(category_values, self.isVisible6, self.isVisible_d6, self.isVisible7)
            category_6.visibility()

    @Slot(list, int)
    def change_category_letter(self, category_values, category_num):
        if category_num == 1:
            category_1 = CategoryChanger(category_values, self.changeLetterCategoryOut1, self.changeValueCategoryOut1, self.isVisible7)
            category_1.letter_changer()
        if category_num == 2:
            category_2 = CategoryChanger(category_values, self.changeLetterCategoryOut2, self.changeValueCategoryOut2, self.isVisible7)
            category_2.letter_changer()
        if category_num == 3:
            category_3 = CategoryChanger(category_values, self.changeLetterCategoryOut3, self.changeValueCategoryOut3, self.isVisible7)
            category_3.letter_changer()
        if category_num == 4:
            category_4 = CategoryChanger(category_values, self.changeLetterCategoryOut4, self.changeValueCategoryOut4, self.isVisible7)
            category_4.letter_changer()
        if category_num == 5:
            category_5 = CategoryChanger(category_values, self.changeLetterCategoryOut5, self.changeValueCategoryOut5, self.isVisible7)
            category_5.letter_changer()
        if category_num == 6:
            category_6 = CategoryChanger(category_values, self.changeLetterCategoryOut6, self.changeValueCategoryOut6, self.isVisible7)
            category_6.letter_changer()

    @Slot(list, int)
    def change_category_value(self, category_values, category_num):
        if category_num == 1:
            category_1 = CategoryChanger(category_values, self.changeLetterCategoryOut1, self.changeValueCategoryOut1, self.isVisible7)
            category_1.value_changer()
        if category_num == 2:
            category_2 = CategoryChanger(category_values, self.changeLetterCategoryOut2, self.changeValueCategoryOut2, self.isVisible7)
            category_2.value_changer()
        if category_num == 3:
            category_3 = CategoryChanger(category_values, self.changeLetterCategoryOut3, self.changeValueCategoryOut3, self.isVisible7)
            category_3.value_changer()
        if category_num == 4:
            category_4 = CategoryChanger(category_values, self.changeLetterCategoryOut4, self.changeValueCategoryOut4, self.isVisible7)
            category_4.value_changer()
        if category_num == 5:
            category_5 = CategoryChanger(category_values, self.changeLetterCategoryOut5, self.changeValueCategoryOut5, self.isVisible7)
            category_5.value_changer()
        if category_num == 6:
            category_6 = CategoryChanger(category_values, self.changeLetterCategoryOut6, self.changeValueCategoryOut6, self.isVisible7)
            category_6.value_changer()


