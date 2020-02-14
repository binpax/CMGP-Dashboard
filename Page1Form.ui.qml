import QtQuick 2.12
import QtQuick.Controls 2.5

Page {
    width: 600
    height: 400

    Label {
        text: qsTr("You are on Page 1.")
        anchors.centerIn: parent
    }

    Image {
        id: image
        anchors.fill: parent
        source: "images/vues/2.png"
        fillMode: Image.PreserveAspectFit
    }
}

/*##^##
Designer {
    D{i:2;anchors_height:100;anchors_width:100;anchors_x:148;anchors_y:55}
}
##^##*/
