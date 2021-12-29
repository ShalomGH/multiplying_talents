import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

import QtQuick.Controls.Material 2.3

Rectangle {
    property variant values: [e_category.currentIndex, f_category.currentIndex, g_category.currentIndex, adding_question_1.currentIndex, adding_question_2.currentIndex, input_value.text]
    property int category_num
    property bool isVisible: false
    property bool isVisible_d: false

    color: "#f1f0eb"

    radius: 10

    anchors.margins: 8
    Layout.fillHeight: true
    Layout.fillWidth: true

    GridLayout {
        anchors.fill: parent
        anchors.margins: 8

        columns: 8
        rows: 2
        rowSpacing: 0
        columnSpacing: 8

        Text {
            id: e1

            text: qsTr("E ")
            font.pixelSize: 20
            Layout.column: 0
            Layout.row: 0
            Layout.fillWidth: true
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
        }

        ComboBox {
            id: e_category

            model: ["1.1", "1.2", "2", "3.2", "3.3"]

            Layout.column: 1
            Layout.row: 0
            Layout.columnSpan: 2
            onActivated:{
                backend.read_category(values, category_num)
                backend.change_category_letter(values, category_num)
            }
        }

        Text {
            id: f1

            text: qsTr("F ")
            font.pixelSize: 20

            Layout.column: 3
            Layout.row: 0
            Layout.fillWidth: true
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
        }

        ComboBox {
            id: f_category

            model: ["1.1", "1.2", "1.3", "2.1", "2.2", "2.3", "3.1", "3.2", "3.3", "4"]

            Layout.column: 4
            Layout.row: 0
            Layout.columnSpan: 2
            onActivated:{
                backend.read_category(values, category_num)
                backend.change_category_letter(values, category_num)
            }
        }

        Text {
            id: g1

            text: qsTr("G ")
            font.pixelSize: 20

            Layout.column: 6
            Layout.row: 0
            Layout.fillWidth: true
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
        }

        ComboBox {
            id: g_category

            model: ["1", "2+3", "4"]

            Layout.column: 7
            Layout.row: 0
            Layout.columnSpan: 2
            onActivated:{
                backend.read_category(values, category_num)
                backend.change_category_letter(values, category_num)
                backend.change_category_value(values, category_num)
            }
        }


        ComboBox {
            id:adding_question_1
            visible: isVisible

            implicitWidth: parent * 0.8

            currentIndex:100
            model: ListModel {
                id: model
                ListElement { text: "Разрабатываемые, есть все параметры" }
                ListElement { text: "Разрабатываемые, нет всех параметров" }
                ListElement { text: "Неразрабатываемые" }
            }

            Layout.column: 0
            Layout.row: 2
            Layout.columnSpan: 6

            onActivated:{
                backend.change_category_letter(values, category_num)
                backend.change_category_value(values, category_num)
            }
        }

        ComboBox {
            id: adding_question_2
            visible: isVisible_d

            implicitWidth: parent * 0.8

            currentIndex:100
            model: ListModel {
                id: model_d
                ListElement { text: "Готовы к поисковому бурению" }
                ListElement { text: "Вне доказанных нефтяных районов" }
                ListElement { text: "Ресурсы нефтеносных плеев" }
                ListElement { text: "Ресурсы неизученных плеев" }
            }
            onActivated:{
                backend.change_category_letter(values, category_num)
                backend.change_category_value(values, category_num)
            }

            Layout.column: 0
            Layout.row: 2
            Layout.columnSpan: 6
        }

        Text_field_my {
            id: input_value

            validator: IntValidator {bottom: 1; top: 999999999;}

            selectByMouse: true
            activeFocusOnTab: true
            focus: true

            placeholderText: "value"

            background: Rectangle {
                radius: 5
                color: "#ffffff"
                border.color: "#75786d"
            }

            onEditingFinished:{backend.change_category_value(values, category_num)}

            Layout.fillWidth: true
            Layout.column: 6
            Layout.row: 2
            Layout.columnSpan: 3
        }
    }
}
