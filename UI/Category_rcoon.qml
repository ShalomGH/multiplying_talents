import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.15

import QtQuick.Controls.Material 2.3

Rectangle {
    id: in1
    visible: true
    color: "#d09bc0"
    Layout.rightMargin: 4
    Layout.bottomMargin: 4
    Layout.leftMargin: 4
    Layout.topMargin: 4
    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
    Layout.fillHeight: true
    Layout.fillWidth: true



    GridLayout {
        id: in1_grid
        anchors.fill: parent
        anchors.margins: 2
        focus: true
        columnSpacing: 0

        columns: 6
        rows: 2



        Text {
            id: e1

            Layout.column: 0
            Layout.row: 0

            text: qsTr("E")
        }

        ComboBox {
            id: e_category
            width: 100

            Layout.column: 1
            Layout.row: 0

            model: ["1", "1.1", "1.2", "2", "3.1", "3.2", "3.3"]

        }

        Text {
            id: f1

            Layout.column: 2
            Layout.row: 0

            text: qsTr("F")
        }

        ComboBox {
            id: f_category

            width: 100

            Layout.column: 3
            Layout.row: 0

            model: ["1.1", "1.2", "1.3", "2.1", "2.2", "2.3", "3.1", "3.2", "3.3", "4"]

        }

        Text {
            id: g1

            Layout.column: 4
            Layout.row: 0
            text: qsTr("G")
        }

        ComboBox {
            id: g_category

            width: 100

            Layout.column: 5
            Layout.row: 0

            model: ["1", "2-3", "4", "4.1", "4.2", "4.3"]

        }

//        Rectangle {
//            id: input_value_rect

//            color: "#ffffff"
//            border.width: 0
//            visible: true

//            Layout.column: 2
//            Layout.row: 2
//            Layout.columnSpan: 2
//            border.width: 2
//            Layout.alignment: Qt.AlignHCenter
//            Layout.fillWidth: true

            TextInput {
                id: input_value
                visible: true

                text: "value"
                maximumLength: 14
                selectByMouse: true
                activeFocusOnTab: true
                focus: true

                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter


                Layout.column: 2
                Layout.row: 2
                Layout.columnSpan: 3

            }

    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:600;width:700}D{i:2}D{i:3}D{i:4}D{i:5}D{i:6}D{i:7}D{i:8}
D{i:1}
}
##^##*/
