import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.15

import QtQuick.Controls.Material 2.3


Rectangle {
    id: in_rect
    color: "#997e91"

    Layout.rightMargin: 8
    Layout.bottomMargin: 4
    Layout.leftMargin: 8
    Layout.topMargin: 4

    Layout.fillHeight: true
    Layout.fillWidth: true

    Layout.column: 0
    Layout.row: 1
    Layout.columnSpan: 1
    Layout.rowSpan: 2

    ColumnLayout {
        id: in_grid
        anchors.fill: parent
        spacing: 2

        Category_rcoon {
            id: cat_in_1
            opacity: 1
            visible: true
        }

        Category_rcoon {
            id: cat_in_2
            opacity: 1
            visible: true
        }

        Category_rcoon {
            id: cat_in_3
            opacity: 1
            visible: true
        }

        Category_rcoon {
            id: cat_in_4
            opacity: 1
            visible: true
        }

        Category_rcoon {
            id: cat_in_5
            opacity: 1
            visible: true
        }

        Category_rcoon {
            id: cat_in_6
            opacity: 1
            visible: true
        }
    }
}



/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:2}D{i:3}D{i:4}D{i:5}D{i:6}D{i:7}D{i:1}
}
##^##*/
