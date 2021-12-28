from key import keys, keys_efg


class CategoryHandler:
    def __init__(self, category_values, signal_1, signal_2):
        self.category = category_values
        self.signal_1 = signal_1
        self.signal_2 = signal_2
        self.efg = str(category_values[:3])
        print(self.efg)

    def visibility(self):
        if keys_efg.get(self.efg) is None:
            self.signal_1.emit(0)
            self.signal_2.emit(0)

        elif keys_efg.get(self.efg) == 1:
            self.signal_1.emit(1)
            self.signal_2.emit(0)
            print("should be visible first question")

        elif keys_efg.get(self.efg) == 2:
            self.signal_1.emit(0)
            self.signal_2.emit(1)
            print("should be visible first question")
