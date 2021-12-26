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

    Pane {
        id: alpf_num

        width: rf_2013_output_ctgr.width * 0.3
        height: rf_2013_output_ctgr.height

        background: Rectangle {color: "#eeeeee"}

        Label {
            text: qsTr("Content")
            anchors.centerIn: parent
        }
    }

    Pane {
        id: rect2

        anchors.left: alpf_num.right
        anchors.leftMargin: 5

        width: rf_2013_output_ctgr.width * 0.69
        height: rf_2013_output_ctgr.height

        background: Rectangle {
            color: "#eeeeee"
        }
        Label {
            text: qsTr("Content")
            anchors.centerIn: parent
        }
    }
}
/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:1}D{i:4}D{i:2}
}
##^##*/

