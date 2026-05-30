import Quickshell
import QtQuick

Rectangle {
    anchors.centerIn: parent
    color: "transparent"
    // implicitWidth: time.width + 20
    // implicitHeight: time.height + 10
    // radius: 15
    Text {
        id: time
        anchors.centerIn: parent
        text: Time.time
        color: Colors.foreground
        font.pixelSize: 14
        font.family: "JetBrainsMono Nerd Font Propo"
        font.bold: true
    }
}