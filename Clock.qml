import Quickshell
import QtQuick

Rectangle {
    anchors.centerIn: parent
    color: Colors.color1
    implicitWidth: time.width + 20
    implicitHeight: time.height + 10
    radius: 15
    Text {
        id: time
        anchors.centerIn: parent
        text: Time.time
        color: Colors.background
        font.pixelSize: 14
        font.family: "JetBrainsMono Nerd Font Propo"
    }
}