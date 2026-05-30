import QtQuick

Row {
    id:root
    spacing: 5
    Repeater {
        model:5
        Rectangle {
            property bool active: index === 0
                width: active ? 40 : 24
                color: active ? Colors.color1 : Colors.color2
                radius: 15
                height: 24
                Text {
                    anchors.centerIn:parent
                    text: index + 1
                    color: Colors.background
                    font.pixelSize: 13
                    font.family: "JetBrainsMono Nerd Font Propo"
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