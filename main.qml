import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        Page {
            function onChecked(checked) {

                if (checked) {
                    rootwin.title = "CheckBox"
                } else {
                    rootwin.title = " "
                }
            }

            CheckBox {
                x: 15
                y: 15
                text: qsTr("Show title")
                checked: true

                onClicked: rootwin.onChecked(checked)
            }
        }

        Page1 {
        }
    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex
        TabButton {
            text: qsTr("First")
        }
        TabButton {
            text: qsTr("Second")
        }
    }
}
