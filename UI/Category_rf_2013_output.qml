import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls.Material 2.3

Item {
    id: rf_2013_output_ctgr

    property string cat_letter_out
    property string cat_value_out

    Layout.fillHeight: true
    Layout.fillWidth: true

    Pane {
        id: alpf_num

        width: rf_2013_output_ctgr.width * 0.3
        height: rf_2013_output_ctgr.height

        background: Rectangle {color: "#f1f0eb"; radius: 5}

        Label {
            text: cat_letter_out
            font.pixelSize: 30
            anchors.centerIn: parent
        }
    }

    Pane {
        id: alpf_value

        width: rf_2013_output_ctgr.width * 0.692
        height: rf_2013_output_ctgr.height

        anchors.left: alpf_num.right
        anchors.leftMargin: 4

        background: Rectangle {color: "#f1f0eb"; radius: 5}

        Label {
            text: cat_value_out
            font.pixelSize: 30
            anchors.centerIn: parent
        }
    }
}
