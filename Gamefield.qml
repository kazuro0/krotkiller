import QtQuick 2.0
import QtQuick.Layouts 1.15


Rectangle {

    Timer {
        id: timer
        }

    function delay(delayTime, cb) {
        timer.interval = delayTime;
        timer.repeat = true;
        timer.triggered.connect(cb);
        timer.start();
    }

    function startGame(){
        enemies.vis = 1
        enemies.score = 0
        mms.miss = 0
        win.wvis = 0
        lose.lvis = 0
        scoret.scorevis = 1
        misst.missvis = 1
        delay(900, function(){
            respawnEnemy()
        })

    }


    function respawnEnemy(){
        enemies.coordx = helper.randx()
        enemies.coordy = helper.randy()
    }
    function scoreUp(){
        enemies.score++
        if (enemies.score == 300) {
            winGame()
        }

    }

    function missUp(){
        mms.miss++
        if (mms.miss == 20) {
            loseGame()
        }
    }

    function winGame(){
        enemies.vis = 0
        win.wvis = 1
        scoret.scorevis = 0
        misst.missvis = 0

    }

    function loseGame(){
        enemies.vis = 0
        lose.lvis = 1
        scoret.scorevis = 0
        misst.missvis = 0

    }

    Rectangle {
        id: scoret
        x:100;y:12
        property int scorevis: 1
        visible: scorevis
        Text {
            anchors.fill: parent
            color: "#cc02fe"
            font.italic: true
            font.pixelSize: 18
            text: enemies.score
        }
    }

    Rectangle {
        id: misst
        x:100;y:33
        property int missvis: 1
        visible: missvis
        Text {
            id: mms
            property int miss: 0
            anchors.fill: parent
            color: "#cc02fe"
            font.italic: true
            font.pixelSize: 18
            text: miss
        }

    }

    Enemy {
        property int coordx: -200
        property int coordy: -200
        id: enemies
        x:coordx
        y:coordy
    }

    Image {
        x:90;y:125
        anchors.centerIn: root
        property int wvis: 0
        id: win
        visible: wvis
        source: "qrc:/images/winscreen.png"
    }

    Image {
        x:90;y:125
        property int lvis: 0
        id: lose
        visible: lvis
        source: "qrc:/images/losescreen.png"
    }

}

