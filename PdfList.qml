import QtQuick 2.0
import QtQuick.Controls 2.4

Item {
    Loader {
        id: windowLoader
        source: "Welcome.qml"
        focus: true
        property bool valid: item !== null
    }
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
                    windowLoader.setSource("qrc:/PdfViewer.qml", {"sourcePath": ret});
                }
            }
        }
    }
}
