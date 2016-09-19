import QtQuick 2.0

Rectangle {
    id: menuDelegate
    width:parent.width
    height:25
    border.width:1
    border.color:"#fee9bc"
    color:"#fdc958"
    Text {
        text:name
        font.pointSize: 20
    }

    MouseArea {
        anchors.fill:parent
        onClicked: {
            subMenu.visible = true
            subMenu.anchors.top = menuRectangle.top
            subMenu.anchors.topMargin = index * parent.height
            menuSelected.text = "Menu Item Selected: " + (index+1)
        }
    }

}
