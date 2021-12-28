import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.15

import QtQuick.Controls.Material 2.3


Rectangle {
    id: m_rectangle
    anchors.fill: parent

    color: "#ecc8e1"

    Material.theme: Material.System
    Material.accent: Material.Purple

    GridLayout {
        id: main_grid

        anchors.fill: parent
        anchors.margins: 10
        rowSpacing: 4
        columnSpacing: 4

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

        Standard_rcoon {id: standart_rcoon_input}

        Standard_rf_2013_output {id: standart_rf_2013_output}



        Button {
            id: button

            text: qsTr("Translate")

            onClicked: {
                foo.standards(from_sdt.currentIndex, to_sdt.currentIndex)
                foo.read_category(standart_rcoon_input.categories)
            }

            Layout.column: 1
            Layout.row: 2
            Layout.columnSpan: 1
            Layout.rowSpan: 1

        }
    }
}
