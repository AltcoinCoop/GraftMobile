import QtQuick 2.9
import com.graft.design 1.0

Rectangle {
    property var pushScreen
    property string highlight: "#25FFFFFF"

    signal seclectedButtonChanged(string buttonName)

    height: 49
    color: ColorFactory.color(DesignFactory.IosNavigationBar)
}
