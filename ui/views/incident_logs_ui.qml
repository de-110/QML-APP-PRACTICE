import QtQuick
import QtQuick.Controls

Item {
    id: incident_logs

    anchors.fill: parent

    Rectangle {
        id: topbar
        height: 70
        color: "#0a51df"
        
        anchors {
            left: parent.left
            right: parent.right
            top: parent.top
        }

        Row{
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 20

            spacing: 20

            SearchField {
                id: search_field
                width: 380
                textRole: "Search Incident Logs...."  
            }

            Button {
                id: add_incident
                width: 100
                text: "New"
            }

            Button {
                id: save_incident
                width: 100
                text: "Save"
            }

            Button {
                id: print_incident
                width: 100
                text: "Print"
            }

            Button {
                id: comparative_report
                width: 150
                text: "Comparative Report"
            }
        }
        
        Button{
            id: logout_button
            width: 100
            text: "Logout"
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            anchors.rightMargin: 20

        }
    }
}