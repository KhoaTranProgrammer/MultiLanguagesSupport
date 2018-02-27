import QtQuick 2.3
import MyLang 1.0

Rectangle {
    id: root
    anchors.fill: parent
    color: "#B2DFDB"

    QtObject {
        id: priv
        property var daysOfWeek: [qsTr("Monday"), qsTr("Tuesday"), qsTr("Wednesday"),
            qsTr("Thursday"), qsTr("Friday"), qsTr("Saturday"), qsTr("Sunday")]
    }

    Repeater {
        model: priv.daysOfWeek.length

        Rectangle {
            anchors {
                horizontalCenter: root.horizontalCenter
            }
            y: root.height * 0.12 * index
            width: root.width * 0.2
            height: root.height * 0.1
            color: "#00BCD4"

            Text {
                anchors {
                    verticalCenter: parent.verticalCenter
                    horizontalCenter: parent.horizontalCenter
                }
                text: qsTr(priv.daysOfWeek[index]) + mytrans.emptyString
                font.pixelSize: parent.height / 2
            }
        }
    }

    Image {
        id: id_eng
        anchors {
            top: parent.top
            right: parent.right
            margins: 5
        }
        source: "image/England.png"

        MouseArea{
            anchors.fill: parent
            onClicked: {
                mytrans.updateLanguage(MyLang.ENG)
            }
        }
    }

    Image {
        id: id_jap
        anchors {
            top: id_eng.bottom
            right: parent.right
            margins: 5
        }
        source: "image/Japan.png"

        MouseArea{
            anchors.fill: parent
            onClicked: {
                mytrans.updateLanguage(MyLang.JAP)
            }
        }
    }

    Image {
        id: id_vie
        anchors {
            top: id_jap.bottom
            right: parent.right
            margins: 5
        }
        source: "image/Vietnam.png"

        MouseArea{
            anchors.fill: parent
            onClicked: {
                mytrans.updateLanguage(MyLang.VIE)
            }
        }
    }
}
