import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.2
import QtQuick.Controls.Material 2.2

ColumnLayout {
    readonly property alias currentText: graftCBox.currentText
    property alias currencyModel: graftCBox.model
    property alias currencyIndex: graftCBox.currentIndex
    property alias dropdownTitle: dropdownTitle.text

    spacing: 4

    Text {
        id: dropdownTitle
        color: "#BBBBBB"
        font.pointSize: 12
        Layout.fillWidth: true
    }

    ComboBox {
        id: graftCBox
        Material.background: "#00707070"
        Material.foreground: "#585858"
        textRole: "name"
        leftPadding: -12
        Layout.fillWidth: true
        Layout.topMargin: -12
        Layout.bottomMargin: -10
    }

    Rectangle {
        height: 1
        color: "#acacac"
        Layout.fillWidth: true
    }
}