import QtQuick 2.5

Rectangle {
    width:parent.width
    height: 25
    Text {
        text:"Menu Item"
        font.pointSize: 20
    }

    MouseArea {
        id: menuRectangleMouseArea
        anchors.fill:parent

        onClicked: {

        }

    }
}
