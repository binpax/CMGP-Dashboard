import QtQuick 2.0
import QtQuick.Controls 2.4

ApplicationWindow {
    visible: true
//    width: 1028
//    height: 620
    visibility: "FullScreen"

    title: qsTr("Tabs")

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex
        Dashboard{
        }
        PdfList {
        }
        Page2Form {
        }
    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex

        TabButton {
            text: qsTr("Dashboard");
        }
        TabButton {
            text: qsTr("PDF LIST")
        }
        TabButton {
            text: qsTr("Config")
        }
    }
}
