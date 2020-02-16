import QtQuick 2.5
import QtQuick.Controls 2.4

Page {
    width: 600
    height: 400

    Label {
        text: qsTr("You are on Page 2.")
        anchors.centerIn: parent
    }

    Image {
        id: image
        anchors.fill: parent
        source: "images/vues/3.png"
        fillMode: Image.PreserveAspectFit
    }
}

/*##^##
Designer {
    D{i:2;anchors_height:100;anchors_width:100;anchors_x:318;anchors_y:233}
}
##^##*/
