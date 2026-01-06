import QtQuick
import QtQuick.Controls

ApplicationWindow{
    visible: true
    title: qsTr("EMSConnect")
    width: 1920
    height: 1080

    StackView {
        id: stack
        initialItem: ("views/incident_logs_ui.qml")
        anchors.fill: parent 
    }

}