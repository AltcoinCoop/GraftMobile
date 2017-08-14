import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import "../"

ApplicationWindow {
    visible: true
    width: 320
    height: 480
    title: qsTr("POS")

    //    header: Header {
    //        headerText: qsTr("Point of Sale")
    //        menuIcon: "qrc:/imgs/menu_icon.png"
    //        cartIcon: "qrc:/imgs/cart_icon.png"
    //    }

    StackView {
        id: stack
        anchors.fill: parent
        initialItem: mainScreen
    }

    ProductScreen {
        id: mainScreen
        pushScreen: productPush()
    }

    function productPush() {
        var map = {}
        map ["openAddScreen"] = openAddingScreen
        map ["initialCheckout"] = openPaymentScreen
        return map
    }

    function openAddingScreen() {
        stack.push("qrc:/pos/AddingScreen.qml", {"pushScreen": stackPop})
    }

    function stackPop() {
        stack.pop()
    }

    function openPaymentScreen() {
        stack.push("qrc:/pos/PaymentScreen.qml", {"pushScreen": stackPop})
    }






}
