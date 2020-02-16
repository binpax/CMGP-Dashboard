import QtQuick 2.0
import QtQuick.Controls 2.4
import QtQuick.Shapes 1.11

Image {
    id: image1

    source: "images/vues/MODEL.ai-page-001.png"
    property int staticw: 1028
    property int statich: 570

    Shape {
        id: bt1

        width: (125/staticw)*image1.width
        height: (125/statich)*image1.height
        x : (390/staticw)*image1.width
        y : (200/statich)*image1.height

        SequentialAnimation {
            id: anim
            loops: Animation.Infinite
            PropertyAnimation {
                target: bt1shape
                property: "fillColor"
                to: "red"
                duration: 1000
            }
            PropertyAnimation {
                target: bt1shape
                property: "fillColor"
                to: "green"
                duration: 1000
            }
        }
        MouseArea{
            anchors.fill: bt1
            onClicked: {
                if(anim.running == true){
                    anim.running = false;
                    bt1shape.fillColor = "white"
                }else{
                    anim.running = true;
                }
                rootclass.buttonClick(1,anim.running)
            }
        }

        ShapePath {
            id: bt1shape

            strokeWidth: 1
            strokeColor: "red"
            startX: 0; startY: 0
            PathLine { x: (125/staticw)*image1.width; y: 0 }
            PathLine { x: (125/staticw)*image1.width; y: (120/statich)*image1.height }
            PathLine { x: 0; y: (125/staticw)*image1.width }
            PathLine { x: 0; y: 0 }


        }
    }
    Shape {
        id: bt2

        width: (125/staticw)*image1.width
        height: (125/statich)*image1.height
        anchors.left: bt1.right
        anchors.top: bt1.top

        SequentialAnimation {
            id: anim2
            loops: Animation.Infinite
            PropertyAnimation {
                target: bt2shape
                property: "fillColor"
                to: "red"
                duration: 1000
            }
            PropertyAnimation {
                target: bt2shape
                property: "fillColor"
                to: "green"
                duration: 1000
            }
        }
        MouseArea{
            anchors.fill: bt2
            onClicked: {
                if(anim2.running == true){
                    anim2.running = false;
                    bt2shape.fillColor = "white"
                }else{
                    anim2.running = true;
                }
                rootclass.buttonClick(2,anim2.running)
            }
        }

        ShapePath {
            id :bt2shape
            strokeWidth: 1
            strokeColor: "red"
            startX: 0; startY: 0
            PathLine { x: (125/staticw)*image1.width; y: 0 }
            PathLine { x: (125/staticw)*image1.width; y: (115/statich)*image1.height }
            PathLine { x: 0; y: (120/statich)*image1.height }
            PathLine { x: 0; y: 0 }
        }
    }
    Shape {
        id: bt3

        width: (125/staticw)*image1.width
        height: (125/statich)*image1.height
        anchors.left: bt2.right
        anchors.top: bt2.top

        SequentialAnimation {
            id: anim3
            loops: Animation.Infinite
            PropertyAnimation {
                target: bt3shape
                property: "fillColor"
                to: "red"
                duration: 1000
            }
            PropertyAnimation {
                target: bt3shape
                property: "fillColor"
                to: "green"
                duration: 1000
            }
        }
        MouseArea{
            anchors.fill: bt3
            onClicked: {
                if(anim3.running == true){
                    anim3.running = false;
                    bt3shape.fillColor = "white"
                }else{
                    anim3.running = true;
                }
                rootclass.buttonClick(3,anim3.running)
            }
        }

        ShapePath {
            //               fillColor: "transparent"
            id : bt3shape
            strokeWidth: 1
            strokeColor: "red"
            startX: 0; startY: 0
            PathLine { x: (150/staticw)*image1.width; y: 0 }
            PathLine { x: (43/staticw)*image1.width; y: (113/statich)*image1.height }
            PathLine { x: 0; y: (115/statich)*image1.height }
            PathLine { x: 0; y: 0 }
        }
    }
    Shape {
        id: bt4

        width: (315/staticw)*image1.width
        height: (91/statich)*image1.height
        x : (155/staticw)*image1.width
        y : (315/statich)*image1.height
        SequentialAnimation {
            id: anim4
            loops: Animation.Infinite
            PropertyAnimation {
                target: bt4shape
                property: "fillColor"
                to: "red"
                duration: 1000
            }
            PropertyAnimation {
                target: bt4shape
                property: "fillColor"
                to: "green"
                duration: 1000
            }
        }
        MouseArea{
            anchors.fill: bt4
            onClicked: {
                if(anim4.running == true){
                    anim4.running = false;
                    bt4shape.fillColor = "white"
                }else{
                    anim4.running = true;
                }
                rootclass.buttonClick(4,anim4.running)
            }
        }

        ShapePath {
            //               fillColor: "transparent"
            id : bt4shape
            strokeColor: "red"
            startX: 0; startY: 0
            PathLine { x: (310/staticw)*image1.width; y: (12/statich)*image1.height }
            PathLine { x: (315/staticw)*image1.width; y: (77/statich)*image1.height }
            PathLine { x: (30/staticw)*image1.width; y: (91/statich)*image1.height }
            PathLine { x: 0; y: 0 }
        }
    }
    Shape {
        id: bt5

        width: (85/staticw)*image1.width
        height: (115/statich)*image1.height
        anchors.left: bt4.right
        anchors.top: bt4.top
        SequentialAnimation {
            id: anim5
            loops: Animation.Infinite
            PropertyAnimation {
                target: bt5shape
                property: "fillColor"
                to: "red"
                duration: 1000
            }
            PropertyAnimation {
                target: bt5shape
                property: "fillColor"
                to: "green"
                duration: 1000
            }
        }
        MouseArea{
            anchors.fill: bt5
            onClicked: {
                if(anim5.running == true){
                    anim5.running = false;
                    bt5shape.fillColor = "white"
                }else{
                    anim5.running = true;
                }
                rootclass.buttonClick(5,anim5.running)
            }
        }

        ShapePath {
            //               fillColor: "transparent"
            id : bt5shape
            strokeColor: "blue"
            startX: (-5/staticw)*image1.width; startY: (10/statich)*image1.height
            PathLine { x: (85/staticw)*image1.width; y: (5/statich)*image1.height }
            PathLine { x: (85/staticw)*image1.width; y: (115/statich)*image1.height }
            PathLine { x: (5/staticw)*image1.width; y: (115/statich)*image1.height }
            PathLine { x: (-5/staticw)*image1.width; y: (10/statich)*image1.height }
        }
    }
    Shape {
        id: bt6

        width: (125/staticw)*image1.width
        height: (125/statich)*image1.height
        anchors.left: bt5.right
        anchors.top: bt5.top
        SequentialAnimation {
            id: anim6
            loops: Animation.Infinite
            PropertyAnimation {
                target: bt6shape
                property: "fillColor"
                to: "red"
                duration: 1000
            }
            PropertyAnimation {
                target: bt6shape
                property: "fillColor"
                to: "green"
                duration: 1000
            }
        }
        MouseArea{
            anchors.fill: bt6
            onClicked: {
                if(anim6.running == true){
                    anim6.running = false;
                    bt6shape.fillColor = "white"
                }else{
                    anim6.running = true;
                }
                rootclass.buttonClick(6,anim6.running)
            }
        }

        ShapePath {
            //               fillColor: "transparent"
            id : bt6shape
            strokeColor: "red"
            startX: (2/staticw)*image1.width; startY: 5
            PathLine { x: (90/staticw)*image1.width; y: 0}
            PathLine { x: (95/staticw)*image1.width; y: (115/statich)*image1.height }
            PathLine { x: (2/staticw)*image1.width; y: (115/statich)*image1.height }
            PathLine { x: (2/staticw)*image1.width; y: (10/statich)*image1.height }
        }
    }

}
