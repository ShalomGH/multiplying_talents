import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.15

import QtQuick.Controls.Material 2.3

Rectangle {
    id: rf_2013_output_ctgr
    visible: true
    color: "#d09bc0"
    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
    Layout.fillHeight: true
    Layout.fillWidth: true

    RowLayout {
        id: rf_2013_output_rows
        anchors.fill: parent
        //        anchors.margins: 2
        //        spacing: 3
        Rectangle {
            id: alpf_num
            visible: true
            width: rf_2013_output_ctgr.width * 0.3
            color: "#3f373c"
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.fillHeight: true
            Layout.fillWidth: true
            //            Layout.row: 0
        }

        Rectangle {
            id: rect2
            anchors.left: alpf_num.right
            anchors.leftMargin: 5
            visible: true
            color: "#4e1639"

            width: rf_2013_output_ctgr.width * 0.69
            Layout.fillHeight: true
            Layout.fillWidth: true

            //            Layout.row: 1
            //            Layout.rowSpan: 2
            Pane {
                anchors.fill: parent
                background: Rectangle {
                    color: "#eeeeee"
                }
                Label {
                    text: qsTr("Content")
                    anchors.centerIn: parent
                }
            }
        }
    }
}
/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:2}D{i:6}D{i:4}D{i:3}D{i:1}
}
##^##*/

