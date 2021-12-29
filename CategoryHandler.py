from key import keys, keys_efg


class CategoryHandler:
    def __init__(self, category_values, signal_1, signal_2, signal_3):
        self.category = category_values
        self.signal_1 = signal_1
        self.signal_2 = signal_2
        self.signal_3 = signal_3
        self.efg = str(category_values[:3])
        self.comboboxes = str(category_values[:4])
        print("efg = ", self.efg)
        print("category_values = ", self.category)

    def dialog_enable(self):
        self.signal_3.emit(1)

    def visibility(self):
        if keys_efg.get(self.efg) == 0:
            self.signal_1.emit(0)
            self.signal_2.emit(0)

        elif keys_efg.get(self.efg) == 1:
            self.signal_1.emit(1)
            self.signal_2.emit(0)
            print("should be visible first question")

        elif keys_efg.get(self.efg) == 2:
            self.signal_1.emit(0)
            self.signal_2.emit(1)
            print("should be visible second question")

        elif keys_efg.get(self.efg) == 404:
            self.dialog_enable()
            self.signal_1.emit(0)
            self.signal_2.emit(0)
            print("should be visible second question")

    def letter_changer(self):
        self.signal_2.emit(0)



