import Quickshell
import QtQuick

Scope {
    Variants {
        model: Quickshell.screens

        PanelWindow {
            required property var modelData
            screen: modelData
            anchors {
                top: true
            }
            implicitWidth: 800
            implicitHeight: 38
            color: "transparent"

            Rectangle {
                anchors.fill:parent
                anchors.topMargin: 5
                color: Colors.background
                radius:16
                border.color: Colors.color0Light
                border.width:1
                Workspaces {anchors.left:parent.left; anchors.verticalCenter:parent.verticalCenter; anchors.leftMargin: 12}
                Clock {}
            }
        }
    }
}

