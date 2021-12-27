import QtQuick 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Window

Window {
    id: mainWindow
    width: 1000
    height: 650
    minimumWidth: 1000
    minimumHeight: 650
    visible: true
    title: qsTr("Translator")

    Screen01 {
        opacity: 1
        visible: true
    }
}

