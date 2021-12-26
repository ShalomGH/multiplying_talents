import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.15

import QtQuick.Controls.Material 2.3

Rectangle {
    id: in1
    color: "#d09bc0"

    Layout.fillHeight: true
    Layout.fillWidth: true
    border.width: 1

    GridLayout {
        id: in1_grid

        anchors.margins: 4
        anchors.fill: parent

        columns: 8
        rows: 2

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
            Layout.column: 3
            Layout.row: 2
            Layout.columnSpan: 4
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:600;width:700}D{i:2}D{i:3}D{i:4}D{i:5}D{i:6}D{i:7}D{i:8}
D{i:1}
}
##^##*/
