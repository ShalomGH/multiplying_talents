import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.15

import QtQuick.Controls.Material 2.3


Item {
    property variant categories: [cat_in_1.values, cat_in_2.values, cat_in_3.values, cat_in_4.values, cat_in_5.values, cat_in_6.values]
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
        anchors.fill: parent
        spacing: 8

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
