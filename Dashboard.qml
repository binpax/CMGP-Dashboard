import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.Shapes 1.14

Image {
    id: image1
    anchors.fill: parent
    source: "file:///home/pi/MODEL.ai-page-001.png"

    Shape {
        id: bt1

        width: 125
        height: 125
        x : 390
        y : 200
        //anchors.right: parent.right

        ShapePath {
            strokeWidth: 1
            strokeColor: "red"
            startX: 0; startY: 0
            PathLine { x: 125; y: 0 }
            PathLine { x: 125; y: 120 }
            PathLine { x: 0; y: 125 }
            PathLine { x: 0; y: 0 }
        }
    }
    Shape {
        id: bt2

        width: 125
        height: 125
        anchors.left: bt1.right
        anchors.top: bt1.top

        ShapePath {
            strokeWidth: 1
            strokeColor: "red"
            startX: 0; startY: 0
            PathLine { x: 125; y: 0 }
            PathLine { x: 125; y: 115 }
            PathLine { x: 0; y: 120 }
            PathLine { x: 0; y: 0 }
        }
    }
    Shape {
        id: bt3

        width: 125
        height: 125
        anchors.left: bt2.right
        anchors.top: bt2.top

        ShapePath {
            //               fillColor: "transparent"
            strokeWidth: 1
            strokeColor: "red"
            startX: 0; startY: 0
            PathLine { x: 150; y: 0 }
            PathLine { x: 43; y: 113 }
            PathLine { x: 0; y: 115 }
            PathLine { x: 0; y: 0 }
        }
    }
    Shape {
        id: bt4

        width: 315
        height: 91
        x : 155
        y : 315

        ShapePath {
            //               fillColor: "transparent"
            strokeWidth: 4
            strokeColor: "red"
            startX: 0; startY: 0
            PathLine { x: 310; y: 12 }
            PathLine { x: 315; y: 77 }
            PathLine { x: 30; y: 91 }
            PathLine { x: 0; y: 0 }
        }
    }
    Shape {
        id: bt5

        width: 85
        height: 115
        anchors.left: bt4.right
        anchors.top: bt4.top

        ShapePath {
            //                fillColor: "transparent"
            strokeWidth: 3
            strokeColor: "blue"
            startX: -5; startY: 10
            PathLine { x: 85; y: 5 }
            PathLine { x: 85; y: 115 }
            PathLine { x: 5; y: 115 }
            PathLine { x: -5; y: 10 }
        }
    }
    Shape {
        id: bt6

        width: 125
        height: 125
        anchors.left: bt5.right
        anchors.top: bt5.top

        ShapePath {
            //                fillColor: "transparent"
            strokeWidth: 3
            strokeColor: "red"
            startX: 2; startY: 5
            PathLine { x: 90; y: 0}
            PathLine { x: 95; y: 115 }
            PathLine { x: 2; y: 115 }
            PathLine { x: 2; y: 10 }
        }
    }

}
