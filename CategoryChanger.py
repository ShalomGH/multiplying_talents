from key import keys, keys_efg


class CategoryChanger:
    def __init__(self, category_values, signal_letter, signal_value, signal_err):
        self.category = category_values
        self.signal_letter = signal_letter
        self.signal_value = signal_value
        self.signal_err = signal_err
        self.comboboxes = category_values[:5]
        # print("category_values = ", self.category)
        # print("comboboxes = ", self.comboboxes)

    def dialog_enable(self):
        self.signal_err.emit(1)

    def letter_changer(self):
        letter = keys.get(str(self.comboboxes))
        print(letter)
        if letter is None:
            self.dialog_enable()
        else:
            self.signal_letter.emit(letter)
        return  letter

    def value_changer(self):
        value = self.category[5]
        # print("value = ", value)
        self.signal_value.emit(value)
        return value

    # def __add__(self, other):
        # if self.letter_changer() == other:
            # print("truuuueeee")