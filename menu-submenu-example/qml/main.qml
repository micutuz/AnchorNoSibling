import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 1.5

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Anchor no sibling")


    Rectangle {
        id: interfaceRectangle
        anchors.fill:parent

        Rectangle {
            id:titleRectangle
            width:parent.width
            height:interfaceRectangle.height / 8
            color:"#e4cfa2"
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "Add submenu near the menu item"
                font.pointSize: 30
            }
        }

        Rectangle {
            id:contextRectangle
            anchors.top:titleRectangle.bottom
            width:parent.width
            color:"#d4b36a"
            Rectangle {
                id: menuRectangle
                width : interfaceRectangle.width /4
                height:interfaceRectangle.height * 7 / 8
                anchors.left:contextRectangle.left
                color:"transparent"

                ListView {
                    anchors.fill:parent
                    delegate: MenuIt {}
                    model: MenuModel {}
                }
            }

            Rectangle {
                id:contentRectangle
                anchors.left:menuRectangle.right
                anchors.top : contextRectangle.top
                width: interfaceRectangle.width * 3 /4
                height: interfaceRectangle.height * 7 / 8
                color:"#f5fecc"

                Column {
                    spacing: 2
                    anchors.centerIn: parent

                    Text {
                        id: menuSelected
                        text: ""
                        font.pointSize: 24
                    }

                    Text {
                        id: subMenuSelected
                        text: ""
                        font.pointSize: 24
                    }
                }
            }

            Rectangle {
                id: subMenu
                width: interfaceRectangle.width /4
                visible:false
                anchors.left: menuRectangle.right
                height:interfaceRectangle.height
                color:"transparent"
                ListView {
                    anchors.fill:parent
                    delegate: SubMenuIt {}
                    model: SubMenuModel {}
                }

            }
        }
    }
}
