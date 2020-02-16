import QtQuick 2.0
import QtQuick.Controls 2.5

ApplicationWindow {
    visible: true
    width: 640
    height: 480
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
            text: qsTr("Config")
        }
        TabButton {
            text: qsTr("PDF LIST")
        }
    }
}
