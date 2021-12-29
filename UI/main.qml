import QtQuick 2.15
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

    Rectangle {
        id: bar
        color: "#dce7c9"
        anchors.top: parent.top
        width: mainWindow.width
        height: 20
        Rectangle {
            id: about_rect
            color: "#dce7c9"
            border.width: 1
            border.color: "#bff18e"
            width: 50
            height: 20
            anchors.left: parent.left
            anchors.leftMargin: 2
            MouseArea{
                anchors.fill: about_rect
                onClicked:{about.visible = 1}
            }
            Text {
                anchors.centerIn: about_rect
                text: qsTr("About")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter

            }
        }
        Rectangle {
            id: help_rect
            color: "#dce7c9"
            width: 50
            height: 20
            border.width: 1
            border.color: "#bff18e"
            anchors.left: about_rect.right
            MouseArea{
                anchors.fill: help_rect
                onClicked:{help.visible = 1}
            }
            Text {
                anchors.centerIn: help_rect
                text: qsTr("Help")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }

    }

    Screen01 {
        opacity: 1
        visible: true
        anchors.top: bar.bottom
        anchors.bottom: parent.bottom
        width: mainWindow.width
    }

    Dialog {
        id: about
        width: 400
        height:150
        visible: about_visible
        anchors.centerIn:parent
        font.pixelSize: 20
        contentItem: Rectangle {
            Text {
                text: "Не стандартнadaddad!"
                font.pixelSize: 30
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.WordWrap
                anchors.centerIn: parent
            }
        }
    }
    Dialog {
        id: help
        width: 800
        height:600
        visible: help_visible
        anchors.centerIn:parent
        font.pixelSize: 20
        contentItem: Rectangle {
            Text {
                width: 800
                text: " < Вы можете переводить категории и соответствующие им
                      количества нефти РКООН в РФ-2013. Для этого следуйте инструкциям:
                1.    Введите категорию путём выбора осей EFG
                2.    Если программа предложила выбрать уточнение выберете из списка
                        наиболее близко описывающее данные объёмы углеводородов.
                3.    Укажите количество углеводородов без указания единиц измерения.
                4.    Если вы хотите ввести ещё категорию то вы можете это сделать в нижеследующем окошке.
                5.    Как только вы закончили вводить категории нажмите «Translate».
                Примечание: Если программа выдаёт ошибку «нестандартная категория»,
                то вы ввели комбинацию EFG, которая является нестандартной и не переводится
                согласно связующему документу ООН, или вы ввели уточнение,
                которое не может соотноситься с данной категорией.
                На данный момент программа находится в стадии разработки о всех
                ошибках сообщайте на почту официальную почту разработчиков  artem.vasin.55@inbox.ru."
                font.pixelSize: 20
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.WordWrap
                anchors.centerIn: parent
            }
        }
    }
}


/*##^##
Designer {
    D{i:0;formeditorZoom:8}D{i:3}D{i:4}D{i:2}D{i:6}D{i:7}D{i:5}D{i:1}D{i:8}D{i:9}D{i:12}
}
##^##*/
