import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.15

import QtQuick.Controls.Material 2.3


Rectangle {
    id: m_rectangle
    anchors.fill: parent

    color: "#903475"

    Material.theme: Material.System
    Material.accent: Material.Purple

    GridLayout {
        id: main_grid

        anchors.fill: parent
        anchors.margins: 10

        columns: 3
        rows: 3

        ComboBox {
            id: from_sdt

            currentIndex : 0
            model: ListModel {
                id: model
                ListElement { text: "RF-2013" }
                ListElement { text: "SPE-PRMS" }
                ListElement { text: "SEC" }
                ListElement { text: "РКООН" }
            }

            Layout.alignment: Qt.AlignHCenter
            Layout.minimumWidth: main_grid.width * 0.3
            Layout.column: 0
            Layout.row: 0
            Layout.columnSpan: 1
            Layout.rowSpan: 1
        }

        ComboBox {
            id: to_sdt

            currentIndex : 3
            model: ListModel {
                id: model_2
                ListElement { text: "RF-2013" }
                ListElement { text: "SPE-PRMS" }
                ListElement { text: "SEC" }
                ListElement { text: "РКООН" }
            }

            width: main_grid.width * 0.3
            Layout.minimumWidth: main_grid.width * 0.3
            Layout.alignment: Qt.AlignHCenter
            Layout.column: 2
            Layout.row: 0
            Layout.columnSpan: 1
            Layout.rowSpan: 1


        }

        Standart_rcoon {id: standart_rcoon_input}

        Standart_rf_2013_output {}

        Button {
            id: button

            text: qsTr("Translate")

            onClicked: {
                foo.standards(from_sdt.currentIndex, to_sdt.currentIndex)
//                foo.read_category(standart_rcoon_input.cat_in_1.opacity)
            }

            Layout.column: 1
            Layout.row: 2
            Layout.columnSpan: 1
            Layout.rowSpan: 1

        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.9;height:480;width:640}D{i:2}D{i:3}D{i:9}D{i:10}
D{i:11}D{i:1}
}
##^##*/

