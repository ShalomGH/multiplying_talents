import QtQuick 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Window

Window {
    id: mainWindow
    width: 1250
    height: 820
    minimumWidth: 1250
    minimumHeight: 820
    visible: true
    title: qsTr("Translator")

    Screen01 {
        opacity: 1
        visible: true
    }
}

