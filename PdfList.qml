import QtQuick 2.0
import QtQuick.Controls 2.5

Item {
    ScrollView {
        anchors.fill: parent

        ListView {
            width: parent.width
            model: rootclass.getQStringList()
            delegate: ItemDelegate {
                text: modelData
                width: parent.width
                onClicked: {
                    var ret = rootclass.pdfClick(modelData)
                    console.log("test"  + ret)
                }
            }
        }
    }
}
