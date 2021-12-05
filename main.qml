import QtQuick
import QtQuick.Shapes 1.15

Window {
    id: mainWindow
    width: 1000
    height: 1000
    visible: true
    title: qsTr("PathAngleArc Example")

    Shape {
        width: parent.width
        height: parent.height

        anchors {
            centerIn: parent
        }

        layer.enabled: true
        layer.samples: 4

        ShapePath {
            fillColor: "white"
            strokeColor: "darkBlue"
            strokeWidth: 20
            capStyle: ShapePath.FlatCap

            PathAngleArc {
                centerX: mainWindow.width * 0.5;
                centerY: mainWindow.height * 0.5;
                radiusX: 250; radiusY: 250
                startAngle: 270
                sweepAngle: 180
            }

        }

        ShapePath {
            fillColor: "white"
            strokeColor: "yellow"
            strokeWidth: 20
            capStyle: ShapePath.FlatCap


            PathAngleArc {
                centerX: mainWindow.width * 0.5;
                centerY: mainWindow.height * 0.5;
                radiusX: 250; radiusY: 250
                startAngle: 90
                sweepAngle: 180
            }
        }
    }
}
