import QtQuick 2.12
import QtQuick.Window 2.12

//make a clickable Image

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Image {
        id: myImage
        source: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/Qt_logo_2016.svg/578px-Qt_logo_2016.svg.png"

        anchors.centerIn: parent
        width: 200
        fillMode: Image.PreserveAspectFit

        Rectangle {
            id: overlay
            visible: false
            anchors.fill: parent
            opacity: 0.5
            color: "orange"
        }

        MouseArea {
            anchors.fill: parent
            hoverEnabled: true
            onEntered: overlay.visible = true
            onExited: overlay.visible = false
            onClicked: Qt.openUrlExternally("http://www.qt.io")
        }

    }


}
