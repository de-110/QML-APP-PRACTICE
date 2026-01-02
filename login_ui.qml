import QtQuick
import QtQuick.Window

Window {
    id: login_window
    width: 400
    height: 500
    visible: true;
    title: qsTr("EMSconnect Login")

    flags: Qt.WindowCloseButtonHint | Qt.WindowMinimizeButtonHint | Qt.CustomizeWindowHint | Qt.Dialog | Qt.WindowTitleHint | Qt.MSWindowsFixedSizeDialogHint
}