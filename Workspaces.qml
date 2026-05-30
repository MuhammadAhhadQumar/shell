import QtQuick

Row {
    id:root
    spacing: 5
    Repeater {
        model:5
        Rectangle {
            property bool active: index === 0
                width: active ? 32 : 24
                height: 24
                radius: 12
                color: active ? Colors.foreground : "transparent"
                Text {
                    anchors.centerIn: parent
                    text: index + 1
                    color: active ? Colors.background : Colors.color8
                    font.pixelSize: 14
                    font.family: "JetBrainsMono Nerd Font Propo"
                    font.bold: active
                }
                MouseArea {
                    anchors.fill: parent
                    cursorShape:Qt.PointingHandCursor
                    hoverEnabled: true

                    onEntered: parent.opacity = 0.8
                    onExited: parent.opacity = 1.0

                    onClicked: {
                        // Logic to switch workspaces goes here
                        // For example, you could emit a signal or call a function to change the workspace
                        // console.log("Switching to workspace " + (index + 1))
                    }
                }
            }
        }
    }