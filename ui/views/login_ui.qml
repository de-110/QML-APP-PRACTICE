import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Controls.Material

Window {
    id: login_window
    width: 400
    height: 400
    color: "#e9e9e9"
    visible: true
    title: qsTr("EMSconnect Login")

    flags: Qt.WindowCloseButtonHint | Qt.WindowMinimizeButtonHint | Qt.CustomizeWindowHint | Qt.Dialog | Qt.WindowTitleHint | Qt.MSWindowsFixedSizeDialogHint

    Material.theme: Material.System
    Material.accent: Material.Indigo


    
    Rectangle {
        id: topbar
        height: 70
        color: "#0a51df"
        anchors {
            left: parent.left
            right: parent.right
            top: parent.top

        }
        Text {
            text: "EMSConnect"
            color: "white"
            font.bold: true
            font.pointSize: 30
            font.letterSpacing: 13
            anchors.centerIn: topbar
        }
        
    }

    Column {
        id: input_container
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: topbar.bottom
        anchors.topMargin: 40

        spacing: 35

        Item {
            width: 350
            height: 60
            Column {
                spacing: 5
                Text {
                    text: "USERNAME"
                    font.weight: 600
                    font.pointSize: 10
                }
                TextField {
                    id: username_input
                    width: 350
                    text: qsTr("")
                    font.pointSize: 10
                    selectByMouse: true
                    placeholderText: qsTr("Enter your username")    
                }
            }
        }

        Item {
            width: 350
            height: 60
            Column {
                spacing: 5
                Text {
                    text: "PASSWORD"
                    font.weight: 600
                    font.pointSize: 10
                }
                TextField {
                    id: password_input
                    width: 350
                    text: qsTr("")
                    font.pointSize: 10
                    selectByMouse: true
                    placeholderText: qsTr("Enter your username")
                    echoMode: TextInput.Password
                }
            }
        }

    }

    Button {
        id:login_button
        width: 300
        text: qsTr("LOGIN")
        font.bold: true
        font.pointSize: 10
        font.letterSpacing: 3
        Material.roundedScale: Material.ExtraSmallScale
        Material.background: hovered ? "#354498" : Material.Indigo
        anchors.top: input_container.bottom
        anchors.topMargin: 40
        anchors.horizontalCenter: parent.horizontalCenter

        onClicked: loginViewModel.login(username_input.text, password_input.text)
    }

}