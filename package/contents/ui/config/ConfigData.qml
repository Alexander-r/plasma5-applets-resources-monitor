import QtQuick 2.2
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1

Item {
    
    property alias cfg_networkSensorDownload: networkSensorDownload.text
    property alias cfg_downloadMaxMbps: downloadMaxMbps.value
    property alias cfg_networkSensorUpload: networkSensorUpload.text
    property alias cfg_uploadMaxMbps: uploadMaxMbps.value

    GridLayout {
        Layout.fillWidth: true
        columns: 2
        
        Label {
            text: i18n('Network download sensor')
            Layout.alignment: Qt.AlignRight
        }
        TextField {
            id: networkSensorDownload
            placeholderText: 'network/interfaces/eth0/receiver/data'
            Layout.preferredWidth: 500
            onTextChanged: cfg_networkSensorDownload = text
        }
        
        Label {
            text: i18n('Max download speed:')
            Layout.alignment: Qt.AlignRight
        }
        SpinBox {
            id: downloadMaxMbps
            decimals: 1
            stepSize: 0.5
            minimumValue: 0.5
            maximumValue: 100000
            value: cfg_downloadMaxMbps
            suffix: i18nc('Abbreviation for Mbit/s', ' Mbit/s')
        }
        
        Label {
            text: i18n('Network upload sensor')
            Layout.alignment: Qt.AlignRight
        }
        TextField {
            id: networkSensorUpload
            placeholderText: 'network/interfaces/eth0/transmitter/data'
            Layout.preferredWidth: 500
            onTextChanged: cfg_networkSensorUpload = text
        }
        
        Label {
            text: i18n('Max upload speed:')
            Layout.alignment: Qt.AlignRight
        }
        SpinBox {
            id: uploadMaxMbps
            decimals: 1
            stepSize: 0.5
            minimumValue: 0.5
            maximumValue: 100000
            value: cfg_uploadMaxMbps
            suffix: i18nc('Abbreviation for Mbit/s', ' Mbit/s')
        }        
        
    }
    
}
