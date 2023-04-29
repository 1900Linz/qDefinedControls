import QtQuick 2.15
import QtQuick.Controls 2.0

Item {

    visible: true
    width: 400
    height: 300

    function finished()
    {
        //do something
    }


    RoundProgress{
        id:progress
        anchors : parent.Center
    }

    Timer{

        id: timer
        running: true
        repeat: true
        interval: 100
        onTriggered: {

            if(progress.state == progress.arcRound){
                timer.running = false
                finished()
            }

            progress.requestPaint()
        }
    }

    function setCurrentValue(var1)
    {
        progress.state = var1;
    }

    function getCurrentValue()
    {
        return progress.state
    }
}

