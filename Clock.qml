import Quickshell
import QtQuick

Rectangle {
    anchors.centerIn: parent
    color: Colors.color2
    implicitWidth: time.width + 25
    implicitHeight: time.height + 14
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