import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.1

Window {

    id: root
    width: 640
    height: 480
    maximumWidth: 640
    maximumHeight: 480
    minimumWidth: 640
    minimumHeight: 480
    visible: true
    title: qsTr("KROTKILLER")

    Image {
            id: background
            source: "qrc:/images/gamefield.png"
            width: 640
            height: 480
            MouseArea {
                anchors.fill: parent
                onClicked: gf.missUp()
            }


    }


    Image {
            id: b_start
            source: "qrc:/images/START.png"
            width: 143
            height: 64
            y:400
            MouseArea {
                anchors.fill: parent
                onClicked: gf.startGame()
            }


    }
    Image {
            id: b_exit
            source: "qrc:/images/EXIT.png"
            width: 114
            height: 64
            x:515
            y:400

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    Qt.quit()
                }
            }
    }


    Gamefield {
        id: gf
        anchors.fill: root

    }
}

