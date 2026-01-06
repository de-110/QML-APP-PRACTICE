import QtQuick
import QtQuick.Controls
import QtQuick.Controls.Material
import QtQuick.Effects

Item {
    id: incident_logs
    anchors.fill: parent

    Rectangle {
        id: side_bar
        width: 80

        anchors {
            left: parent.left
            top: parent.top
            bottom: parent.bottom
        }

        Column {
            id: side_bar_column
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 20
            spacing: 100

            Column {
                id: nav_header
                anchors.horizontalCenter: parent.horizontalCenter
                spacing: 20

                Text {
                    id: title_acronym
                    text: "IL"
                    color: "limegreen"
                    font.pointSize: 15
                    font.letterSpacing: 1
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Image {
                    id: user_photo
                    source: "../../assets/profile-picture.png"
                    fillMode: Image.PreserveAspectFit
                    antialiasing: true
                    width: 60
                    height: 60

                    Text {
                        id: user_name
                        text: "John"
                        font.weight: 600
                        font.pointSize: 12
                        font.letterSpacing: 1

                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.top: user_photo.bottom
                        anchors.topMargin: 10
                    }
                }
            }

            Column {
                id: nav_buttons
                anchors.horizontalCenter: parent.horizontalCenter
                spacing: 5

                Button {
                    id: data_entry
                    width: 80
                    height: 60
                    flat: true

                    icon.source: "../../assets/data-entry.png"
                    icon.width: 32
                    icon.height: 32
                    icon.color: hovered ? "limegreen" : "black"

                    Material.roundedScale: Material.ExtraSmallScale

                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Button {
                    id: view_incidents
                    width: 80
                    height: 60
                    flat: true

                    icon.source: "../../assets/incidents.png"
                    icon.width: 32
                    icon.height: 32
                    icon.color: hovered ? "limegreen" : "black"

                    Material.roundedScale: Material.ExtraSmallScale

                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }
            
            Column {
                id: nav_crud
                anchors.horizontalCenter: parent.horizontalCenter
                spacing: 5

                Button {
                    id: add_incident
                    width: 70
                    height: 70
                    flat: true
                    
                    icon.source: "../../assets/plus-sign.png"
                    icon.color: "white"
                    icon.width: 16
                    icon.height: 16

                    text: "New"
                    font.pixelSize: 14
                    display: AbstractButton.TextUnderIcon

                    Material.roundedScale: Material.ExtraSmallScale
                    Material.background: hovered ? "limegreen" : "darkgrey"
                    Material.foreground: "white"
                    
                
                }

                Button {
                    id: delete_incident
                    width: 70
                    height: 70
                    flat: true
                    
                    icon.source: "../../assets/delete.png"
                    icon.color: "white"
                    icon.width: 16
                    icon.height: 16

                    text: "Delete"
                    font.pixelSize: 14
                    display: AbstractButton.TextUnderIcon

                    Material.roundedScale: Material.ExtraSmallScale
                    Material.background: hovered ? "limegreen" : "darkgrey"
                    Material.foreground: "white"
                    
                    
                }

                Button {
                    id: print_incident
                    width: 70
                    height: 70
                    flat: true
                    
                    icon.source: "../../assets/printing.png"
                    icon.color: "white"
                    icon.width: 16
                    icon.height: 16

                    text: "Print"
                    font.pixelSize: 14
                    display: AbstractButton.TextUnderIcon

                    Material.roundedScale: Material.ExtraSmallScale
                    Material.background: hovered ? "limegreen" : "darkgrey"
                    Material.foreground: "white"
                    
                    
                }
            }

            Column {
                id: settings_logout
                anchors.horizontalCenter: parent.horizontalCenter
                spacing: 5

                Button {
                    id: settings
                    width: 80
                    height: 60
                    flat: true

                    icon.source: "../../assets/settings.png"
                    icon.width: 32
                    icon.height: 32
                    icon.color: hovered ? "limegreen" : "black"

                    Material.roundedScale: Material.ExtraSmallScale

                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Button {
                    id: logout
                    width: 80
                    height: 60
                    flat: true

                    icon.source: "../../assets/logout.png"
                    icon.width: 32
                    icon.height: 32
                    icon.color: hovered ? "limegreen" : "black"

                    Material.roundedScale: Material.ExtraSmallScale

                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }
        }
    }

    Rectangle {
        id: top_bar
        height: 60

        anchors {
            left: side_bar.right
            right: parent.right
            top: parent.top
        }
        anchors.topMargin: 5

        Row {
            id: tool_bar
            anchors.verticalCenter: parent.verticalCenter
            spacing: 30

            Button {
                id: menu
                 width: 80
                height: 60
                flat: true

                icon.source: "../../assets/menu.png"
                icon.width: 32
                icon.height: 32
                icon.color: hovered ? "limegreen" : "black"

                Material.roundedScale: Material.ExtraSmallScale

                
                anchors.verticalCenter: parent.verticalCenter
            }

            SearchField {
                id: incident_search
                width: 600
                

                anchors.verticalCenter: parent.verticalCenter
                anchors.top: parent.top
                anchors.topMargin: 10
            }
        }
    }

    MultiEffect {
        source: side_bar
        anchors.fill: side_bar
        
        shadowEnabled: true
        shadowColor: "black"

        shadowBlur: 3
        shadowHorizontalOffset: 0
        shadowVerticalOffset: 0
        shadowOpacity: 0.5
    }
}