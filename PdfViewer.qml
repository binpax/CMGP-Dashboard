import QtQuick 2.11
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.3
import QtQuick.Window 2.11

import QtQuick.Controls.Material 2.4

import Qt.labs.platform 1.0
import org.docviewer.poppler 1.0

Item {
    width: 800
    height: 600
    property color themeColor: "#1fd174"

    // PDF Viewer:


    PDFView {
      id: pdfView
      anchors.fill: parent
      focus: true
      path: fileDialog.file.toString().substring(6)

      ScrollBar.vertical: ScrollBar {
        minimumSize: 0.04
      }

      ScrollBar.horizontal: ScrollBar {
        minimumSize: 0.04
      }
      onSearchRestartedFromTheBeginning: {
        notifyLabel.text = qsTr("Search restarted from the beginning")
        notifyAnimation.start()
      }

      onSearchNotFound: {
        notifyLabel.text = qsTr('"%1" not found').arg(searchField.text)
        notifyAnimation.start()
      }

      Keys.onPressed: {
        if (event.modifiers === Qt.ControlModifier) {
          if (event.key === Qt.Key_Minus) {
            zoomSlider.decrease()
            event.accepted = true
          } else if (event.key === Qt.Key_Plus) {
            zoomSlider.increase()
            event.accepted = true
          } else if (event.key === Qt.Key_0) {
            zoomSlider.value = 1
            event.accepted = true
          } else if (event.key === Qt.Key_F) {
            searchField.forceActiveFocus()
          }
        } else if (event.modifiers === Qt.NoModifier) {
          if (event.key === Qt.Key_Home) {
            pagesView.positionViewAtBeginning()
            event.accepted = true
          } else if (event.key === Qt.Key_End) {
            pagesView.positionViewAtEnd()
            event.accepted = true
          }
        }
      }
    }    // Zoom slider:
    Slider {
        id: zoomSlider
        anchors.top: parent.top
        anchors.bottom: buttons.top
        anchors.right: parent.right
        anchors.margins: 5
        value: 0

        onValueChanged: pdfView.zoom = 1 + (pdfView.maxZoom - pdfView.fitZoom) * value
    }

}

