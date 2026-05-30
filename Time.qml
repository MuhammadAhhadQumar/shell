pragma Singleton
import Quickshell
import Quickshell.Io
import QtQuick

Singleton {
    id:root
    property string time: ""
        property string date: ""
            Process {
                id: dateProc
                command: ["date", "+%m/%d %I:%M %P"]
                running: true
                stdout: StdioCollector {
                    onStreamFinished: {
                        var parts = this.text.trim().split(' ')
                        root.date = parts[0]
                        root.time = parts[1]+ ' ' + parts[2]
                    }
                }
            }
            Timer {
                interval: 60000
                running: true
                repeat: true
                onTriggered: {
                    dateProc.running = true
                }
            }
        }