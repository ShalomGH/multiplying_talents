import QtQuick 2.15
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.15
import QtQuick.Controls.Material 2.3

Item {
    id: rf_2013_output_stand

    visible: true

    Layout.rightMargin: 4
    Layout.bottomMargin: 4
    Layout.leftMargin: 4
    Layout.topMargin: 4

    Layout.fillHeight: true
    Layout.fillWidth: true

    Layout.column: 2
    Layout.row: 1
    Layout.columnSpan: 1
    Layout.rowSpan: 2

    ColumnLayout {
        id: ind
        anchors.fill: parent
        anchors.margins: 4
        focus: true

        Category_rf_2013_output {
            id: cat_out_1
            visible: true
        }

        Category_rf_2013_output {
            id: cat_out_2
            visible: true
        }

        Category_rf_2013_output {
            id: cat_out_3
            visible: true
        }

        Category_rf_2013_output {
            id: cat_out_4
            visible: true
        }

        Category_rf_2013_output {
            id: cat_out_5
            visible: true
        }

        Category_rf_2013_output {
            id: cat_out_6
            visible: true
        }
    }
    Connections{
        target: backend

        function onChangeLetterCategoryOut1(letter) {
            cat_out_1.cat_letter_out = letter
        }
        function onChangeValueCategoryOut1(value) {
            cat_out_1.cat_value_out = value
        }

        function onChangeLetterCategoryOut2(letter) {
            cat_out_2.cat_letter_out = letter
        }
        function onChangeValueCategoryOut2(value) {
            cat_out_2.cat_value_out = value
        }

        function onChangeLetterCategoryOut3(letter) {
            cat_out_3.cat_letter_out = letter
        }
        function onChangeValueCategoryOut3(value) {
            cat_out_3.cat_value_out = value
        }

        function onChangeLetterCategoryOut4(letter) {
            cat_out_4.cat_letter_out = letter
        }
        function onChangeValueCategoryOut4(value) {
            cat_out_4.cat_value_out = value
        }

        function onChangeLetterCategoryOut5(letter) {
            cat_out_5.cat_letter_out = letter
        }
        function onChangeValueCategoryOut5(value) {
            cat_out_5.cat_value_out = value
        }

        function onChangeLetterCategoryOut6(letter) {
            cat_out_6.cat_letter_out = letter
        }
        function onChangeValueCategoryOut6(value) {
            cat_out_6.cat_value_out = value
        }

    }
}
