import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.15

import QtQuick.Controls.Material 2.3

Item {
    property variant values: [e_category.currentIndex, f_category.currentIndex, g_category.currentIndex, input_value.text]

    anchors.margins: 8
    Layout.fillHeight: true
    Layout.fillWidth: true

    GridLayout {
        anchors.fill: parent
        anchors.margins: 2

        columns: 8
        rows: 2
        rowSpacing: 4
        columnSpacing: 4

        Text {
            id: e1

            text: qsTr("E ")

            Layout.column: 0
            Layout.row: 0
            Layout.fillWidth: true
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
        }

        ComboBox {
            id: e_category

            model: ["1", "1.1", "1.2", "2", "3.1", "3.2", "3.3"]

            Layout.column: 1
            Layout.row: 0
            Layout.columnSpan: 2
        }

        Text {
            id: f1

            text: qsTr("F ")

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
        }

        Text {
            id: g1

            text: qsTr("G ")

            Layout.column: 6
            Layout.row: 0
            Layout.fillWidth: true
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
        }

        ComboBox {
            id: g_category

            model: ["1", "2-3", "4", "4.1", "4.2", "4.3"]

            Layout.column: 7
            Layout.row: 0
            Layout.columnSpan: 2
            onActivated:{
                foo.print()
            }
        }


        ComboBox {
            id:adding_question
            visible: false

            implicitWidth: parent * 0.8

            model: ListModel {
                id: model
                ListElement { text: "Разрабатываемые, все данные собраны" }
                ListElement { text: "Разрабатываемые, не все данные собраны" }
                ListElement { text: "неразрабатываемые" }
            }

            Layout.column: 0
            Layout.row: 2
            Layout.columnSpan: 6
        }

        ComboBox {
            id:adding_question_d
            visible: false

            implicitWidth: parent * 0.8

            model: ListModel {
                id: model_d
                ListElement { text: "Подготовлены к поисковому бурению" }
                ListElement { text: "Разведанны вне доказанных нефтяных районов" }
                ListElement { text: "Ресурсы плеев с открытыми залежами" }
                ListElement { text: "Ресурсы плеев с закрытыми залежами" }
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
                color: "#ffffff"
                border.color: "#000000"
            }


            Layout.fillWidth: true
            Layout.column: 6
            Layout.row: 2
            Layout.columnSpan: 3
        }
    }
}
