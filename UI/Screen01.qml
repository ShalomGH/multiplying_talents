import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.15

import QtQuick.Controls.Material 2.3

Rectangle {
    id: m_rectangle
    anchors.fill: parent

    visible: true

    color: "#903475"

    Material.theme: Material.System
    Material.accent: Material.Purple

    GridLayout {
        id: main_grid
        anchors.fill: parent
        anchors.margins: 10
        columnSpacing: 0

        columns: 3
        rows: 3

        ComboBox {
            id: from_sdt
            Layout.leftMargin: 10
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

            Layout.minimumWidth: main_grid.width * 0.3
            Layout.column: 0
            Layout.row: 0
            Layout.columnSpan: 1
            Layout.rowSpan: 1

            model: ["RF-2013", "SPE-PRMS", "SEC", "РКООН"]
        }

        ComboBox {
            id: to_sdt

            width: main_grid.width * 0.3
            Layout.minimumWidth: main_grid.width * 0.3
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.column: 2
            Layout.row: 0
            Layout.columnSpan: 1
            Layout.rowSpan: 1

            model: ["RF-2013", "SPE-PRMS", "SEC", "РКООН"]
        }

        Standart_rcoon {
            visible: true
        }

        Rectangle {
            id: out_rect
            visible: true
            color: "#997e91"
            Layout.rightMargin: 8
            Layout.bottomMargin: 4
            Layout.leftMargin: 8
            Layout.topMargin: 4
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.fillHeight: true
            Layout.fillWidth: true

            Layout.column: 2
            Layout.row: 1
            Layout.columnSpan: 1
            Layout.rowSpan: 2
        }

        Button {
            id: button
            text: qsTr("Translate")
            Layout.bottomMargin: 24
            Layout.topMargin: 0

            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
            Layout.column: 1
            Layout.row: 2
            Layout.columnSpan: 1
            Layout.rowSpan: 1
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.9;height:480;width:640}D{i:2}D{i:3}D{i:4}D{i:5}
D{i:6}D{i:1}
}
##^##*/

