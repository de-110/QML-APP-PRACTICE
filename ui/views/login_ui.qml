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

    property color alertColor: ems_connect.loginViewModel.loginStatus ? "black" : "red"
    property string alertText: ems_connect.loginViewModel.loginStatus ? "" : "Wrong Credentials!"

    QtObject {
        id: internal
        function submitLogin() {
            ems_connect.loginViewModel.validateCredentials(username_input.text, password_input.text)
        }
    }

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
                    color: login_window.alertColor
                    font.weight: 600
                    font.pointSize: 10
                }
                TextField {
                    id: username_input
                    width: 350
                    text: qsTr("")
                    color: login_window.alertColor
                    font.pointSize: 10
                    selectByMouse: true
                    placeholderText: qsTr("Enter your username")
                    placeholderTextColor: login_window.alertColor
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
                    color: login_window.alertColor
                    font.weight: 600
                    font.pointSize: 10
                }
                TextField {
                    id: password_input
                    width: 350
                    text: qsTr("")
                    color: login_window.alertColor
                    font.pointSize: 10
                    selectByMouse: true
                    placeholderText: qsTr("Enter your username")
                    placeholderTextColor: login_window.alertColor
                    echoMode: TextInput.Password

                    Keys.onReturnPressed: internal.submitLogin()
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

        onClicked: internal.submitLogin()
    }

    Text {
        text: login_window.alertText
        color: login_window.alertColor
        font.bold: true
        font.pointSize: 10
        anchors.top: login_button.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }

}