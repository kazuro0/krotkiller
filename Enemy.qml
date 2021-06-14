import QtQuick 2.0

MouseArea{
    property int vis: 0
    property int score: 0
    height: 118
    width: 118
    onClicked: {
        respawnEnemy()
        scoreUp()
    }

    Image {
        visible: vis
        id: enemy
        source: "qrc:/images/enemy.png"
        anchors.fill: parent
    }
}






