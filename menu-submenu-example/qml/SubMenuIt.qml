import QtQuick 2.0

Rectangle {
    id: menuDelegate
    width:parent.width
    height:25
    color:"#FD7658"
    border.width:1
    border.color:"#feb4a4"
    Text {
        text:name
        font.pointSize: 20
    }

    MouseArea {
        anchors.fill:parent
        onClicked: {
            subMenu.visible = false
            subMenuSelected.text = "Sub Menu Item Selected: " + (index+1)
        }
    }
}
