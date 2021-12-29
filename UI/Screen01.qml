import QtQuick 2.15
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.15
import QtQuick.Controls.Material 2.3
import QtQuick.Dialogs

Rectangle {
    id: m_rectangle

    color: "#fdfdf5"

//    Material.theme: Material.System
//    Material.accent: "#426918"

    GridLayout {
        id: main_grid

        anchors.fill: parent
        anchors.margins: 10
        rowSpacing: 4
        columnSpacing: 4

        columns: 3
        rows: 3

        ComboBox {
            id: from_sdt

            currentIndex : 0
            model: ListModel {
                id: model
                ListElement { text: "RF-2013" }
                ListElement { text: "SPE-PRMS" }
                ListElement { text: "SEC" }
                ListElement { text: "РКООН" }
            }

            Layout.alignment: Qt.AlignHCenter
            Layout.minimumWidth: main_grid.width * 0.3
            Layout.column: 0
            Layout.row: 0
            Layout.columnSpan: 1
            Layout.rowSpan: 1
        }

        ComboBox {
            id: to_sdt

            currentIndex : 3
            model: ListModel {
                id: model_2
                ListElement { text: "RF-2013" }
                ListElement { text: "SPE-PRMS" }
                ListElement { text: "SEC" }
                ListElement { text: "РКООН" }
            }

            width: main_grid.width * 0.3
            Layout.minimumWidth: main_grid.width * 0.3
            Layout.alignment: Qt.AlignHCenter
            Layout.column: 2
            Layout.row: 0
            Layout.columnSpan: 1
            Layout.rowSpan: 1


        }

        Standard_rcoon {id: standart_rcoon_input}

        Standard_rf_2013_output {id: standart_rf_2013_output}



        Button {
            id: button_a
            Material.background: "#5f7f3c"
            Material.foreground: "#e1f6df"

            text: qsTr("Translate")

            onClicked: {
//                err_dialog.visible = true
                backend.dialog_enable()
//                backend.standards(from_sdt.currentIndex, to_sdt.currentIndex)
//                backend.read_categories(standart_rcoon_input.categories)
            }

            Layout.column: 1
            Layout.row: 2
            Layout.columnSpan: 1
            Layout.rowSpan: 1
        }

        Dialog {
            id: err_dialog
            width: 400
            height:150
            anchors.centerIn:parent
            font.pixelSize: 20
            contentItem: Rectangle {
                Text {
                    text: "Не стандартная категория!"
                    font.pixelSize: 30
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.WordWrap
                    anchors.centerIn: parent
                }
            }
        }
    Connections{
        target: backend
        function onIsVisible7(isVisible) {
            err_dialog.visible = isVisible
        }
    }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:1.33;height:480;width:640}D{i:2}D{i:8}D{i:14}D{i:15}
D{i:16}D{i:17}D{i:20}D{i:1}
}
##^##*/
