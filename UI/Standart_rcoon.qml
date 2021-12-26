import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.15

import QtQuick.Controls.Material 2.3


Rectangle {
    id: in_rect
    visible: true
    color: "#997e91"
    Layout.rightMargin: 8
    Layout.bottomMargin: 4
    Layout.leftMargin: 8
    Layout.topMargin: 4
    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
    Layout.fillHeight: true
    Layout.fillWidth: true

    Layout.column: 0
    Layout.row: 1
    Layout.columnSpan: 1
    Layout.rowSpan: 2

    ColumnLayout {
        id: in_grid
        anchors.fill: parent
        spacing: 0

        Category_rcoon {
            opacity: 1
            visible: true
        }

        Category_rcoon {
            opacity: 1
            visible: true
        }

        Category_rcoon {
            opacity: 1
            visible: true
        }

        Category_rcoon {
            opacity: 1
            visible: true
        }

        Category_rcoon {
            opacity: 1
            visible: true
        }

        Category_rcoon {
            opacity: 1
            visible: true
        }
    }
}



/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:1}D{i:3}D{i:4}D{i:5}D{i:6}D{i:2}
}
##^##*/
