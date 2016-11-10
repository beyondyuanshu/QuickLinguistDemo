import QtQuick 2.4
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480

    Text {
        anchors.centerIn: parent
        //: Test for adding Context
        text: qsTr("Hello Qt!")
    }
}
