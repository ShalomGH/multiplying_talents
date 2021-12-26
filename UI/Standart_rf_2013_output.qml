import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.15

import QtQuick.Controls.Material 2.3

Rectangle {
    id: rf_2013_output_stand

    visible: true
    color: "#d09bc0"

    Layout.rightMargin: 4
    Layout.bottomMargin: 4
    Layout.leftMargin: 4
    Layout.topMargin: 4

    Layout.fillHeight: true
    Layout.fillWidth: true

    Layout.column: 2
    Layout.row: 1
    Layout.columnSpan: 1
    Layout.rowSpan: 2

    ColumnLayout {
        id: ind
        anchors.fill: parent
        anchors.margins: 4
        focus: true

        Category_rf_2013_output {
            visible: true
        }

        Category_rf_2013_output {
            visible: true
        }

        Category_rf_2013_output {
            visible: true
        }

        Category_rf_2013_output {
            visible: true
        }

        Category_rf_2013_output {
            visible: true
        }

        Category_rf_2013_output {
            visible: true
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:720}D{i:2}D{i:3}D{i:4}D{i:5}D{i:6}D{i:7}D{i:1}
}
##^##*/

