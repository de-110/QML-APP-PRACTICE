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
        clip: true

        states: State {
            name: "clicked";
            PropertyChanges { target: side_bar; width: 250;}
            
            PropertyChanges { target: title_acronym; text: "Incident Logs";}
            PropertyChanges { target: user_role; visible: true;}
            
            PropertyChanges { target: data_entry; text: "Enter Incident"; width: 250}
            PropertyChanges { target: view_incidents; text: "View Incidents"; width: 250}
            PropertyChanges { target: settings; text: "Settings"; width: 250}
            PropertyChanges { target: logout; text: "Logout"; width: 250}
            
            PropertyChanges { target: add_incident; display: AbstractButton.TextBesideIcon; width: 240}
            PropertyChanges { target: delete_incident; display: AbstractButton.TextBesideIcon; width: 240}
            PropertyChanges { target: print_incident; display: AbstractButton.TextBesideIcon; width: 240}
        }

        transitions: Transition {
            to: "clicked"
            reversible: true
            SequentialAnimation {
                
                ParallelAnimation{
                    PropertyAction {
                        targets: [add_incident, delete_incident, print_incident]
                        property: "display"
                    }
                    PropertyAction {
                        targets: [data_entry, view_incidents, settings, logout]
                        property: "text"
                    }
                }
                
                NumberAnimation { properties: "width"; duration: 200; easing.type: Easing.InOutBack;}                          
            }
        }

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
                    clip:true
                    text: "IL"
                    color: "black"
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

                    anchors.horizontalCenter: parent.horizontalCenter

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

                    Text {
                        visible: false
                        id: user_role
                        text: "COMMEL"
                        font.weight: 400
                        font.pointSize: 10
                        opacity: 0.8

                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.top: user_name.bottom
                        anchors.topMargin: 8
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

                    text: ""
                    display: AbstractButton.TextBesideIcon
                    font.pointSize: 12        

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

                    text: ""
                    display: AbstractButton.TextBesideIcon
                    font.pointSize: 12  

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

                    text: ""
                    display: AbstractButton.TextBesideIcon
                    font.pointSize: 12    

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

                    text: ""
                    display: AbstractButton.TextBesideIcon
                    font.pointSize: 12    

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

                onClicked: {side_bar.state = (side_bar.state === 'clicked' ? "" : 'clicked');}
                
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