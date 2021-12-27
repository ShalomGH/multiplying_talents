from PySide6.QtCore import QObject, QUrl, Slot


class Foo(QObject):

    @Slot(int, int)
    def standards(self, input_cat, output_cat):
        print(input_cat, output_cat)

    @Slot(int, int, int, int)
    def read_category(self, e_input):
        print(e_input)

#         , f_input, g_input, value
