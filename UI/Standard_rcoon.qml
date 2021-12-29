import QtQuick 2.15
import QtQuick.Controls 2.15
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
            category_num: 1
            opacity: 1
            visible: true
        }

        Category_rcoon {
            id: cat_in_2
            category_num: 2
            opacity: 1
            visible: true
        }

        Category_rcoon {
            id: cat_in_3
            category_num: 3
            opacity: 1
            visible: true
        }

        Category_rcoon {
            id: cat_in_4
            category_num: 4
            opacity: 1
            visible: true
        }

        Category_rcoon {
            id: cat_in_5
            category_num: 5
            opacity: 1
            visible: true
        }

        Category_rcoon {
            id: cat_in_6
            category_num: 6
            opacity: 1
            visible: true
        }
    }
    Connections{
        target: backend
        function onIsVisible1(isVisible){
            cat_in_1.isVisible = isVisible
        }
        function onIsVisible_d1(isVisible_d){
            cat_in_1.isVisible_d = isVisible_d
        }

        function onIsVisible2(isVisible){
            cat_in_2.isVisible = isVisible
        }
        function onIsVisible_d2(isVisible_d){
            cat_in_2.isVisible_d = isVisible_d
        }

        function onIsVisible3(isVisible){
            cat_in_3.isVisible = isVisible
        }
        function onIsVisible_d3(isVisible_d){
            cat_in_3.isVisible_d = isVisible_d
        }

        function onIsVisible4(isVisible){
            cat_in_4.isVisible = isVisible
        }
        function onIsVisible_d4(isVisible_d){
            cat_in_4.isVisible_d = isVisible_d
        }

        function onIsVisible5(isVisible){
            cat_in_5.isVisible = isVisible
        }
        function onIsVisible_d5(isVisible_d){
            cat_in_5.isVisible_d = isVisible_d
        }

        function onIsVisible6(isVisible){
            cat_in_6.isVisible = isVisible
        }
        function onIsVisible_d6(isVisible_d){
            cat_in_6.isVisible_d = isVisible_d
        }
    }
}
