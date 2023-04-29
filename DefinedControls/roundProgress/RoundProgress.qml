import QtQuick 2.15

Canvas{
    property int radius: 100
    property real state: 0
    property real arcWidth: 2

    readonly property int arcRound : 360
    readonly property int denominator : 100

    id:progressCanvas

    width: 2 * radius + arcWidth
    height: 2* radius + arcWidth

    Text {
        id: onNote
        text: Math.floor((parent.state / parent.arcRound)*parent.denominator)+ "%"
    }

    onPaint: {
        var canvasPainter = getContext("2d")

        canvasPainter.beginPath()
        canvasPainter.strokeStyle = "cyan"
        canvasPainter.lineWidth = 2
        canvasPainter.arc(width /2, height /2, radius, Math.PI *2, false)
        canvasPainter.stroke()

        var r = progress * Math.PI / 180

        canvasPainter.beginPath()
        canvasPainter.strokeStyle = "#green"
        canvasPainter.lineWidth = 2

        canvasPainter.arc(width / 2, height / 2, radius,
                                  0 - 90 * Math.PI / 180 ,
                                  r - 90 * Math.PI / 180, false)
        canvasPainter.stroke()
    }


}
