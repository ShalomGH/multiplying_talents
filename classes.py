from PySide6.QtCore import QObject, QUrl, Slot


class Foo(QObject):

    @Slot(int, int)
    def standards(self, input_cat, output_cat):
        print(input_cat, output_cat)

    @Slot(list)
    def read_category(self, input):
        print(input)

    @Slot()
    def print(self):
        print("test")

#         , f_input, g_input, value
