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
                radius: 20

                Clock {}
            }
        }
    }
}

