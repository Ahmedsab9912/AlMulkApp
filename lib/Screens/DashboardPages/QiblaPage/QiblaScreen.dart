import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:sensors_plus/sensors_plus.dart';
import 'package:collection/collection.dart';
import 'dart:math' as math;

class QiblaScreen extends StatefulWidget {
  const QiblaScreen({Key? key}) : super(key: key);

  @override
  State<QiblaScreen> createState() => _QiblaScreenState();
}

class _QiblaScreenState extends State<QiblaScreen> {
  double? qiblaDirection;
  double? userDirection;

  @override
  void initState() {
    super.initState();
    _getQiblaDirection();
    _startListeningOrientation();
  }

  @override
  void dispose() {
    super.dispose();
    _stopListeningOrientation();
  }

  void _getQiblaDirection() {
    // Coordinates of Mecca (Kaaba)
    double meccaLatitude = 21.4225;
    double meccaLongitude = 39.8262;

    // Get the user's location
    Geolocator.getCurrentPosition().then((position) {
      double userLatitude = position.latitude;
      double userLongitude = position.longitude;

      // Calculate Qibla direction
      double qiblaDirectionRad = math.atan2(
        math.sin(meccaLongitude - userLongitude),
        math.cos(userLatitude) * math.tan(meccaLatitude) -
            math.sin(userLatitude) * math.cos(meccaLongitude - userLongitude),
      );

      // Convert radians to degrees and adjust the heading to be within the range of 0° to 360°
      double qiblaDirectionDeg = qiblaDirectionRad * (180 / math.pi);
      qiblaDirection = (qiblaDirectionDeg + 360) % 360;

      setState(() {});
    }).catchError((e) {
      print("Error while getting the user's location: $e");
    });
  }

  void _startListeningOrientation() {
    accelerometerEvents.listen((event) {
      gyroscopeEvents.listen((eventGyro) {
        double roll = eventGyro.y;
        double pitch = eventGyro.x;
        double yaw = eventGyro.z;

        double azimuth = math.atan2(event.y, event.x);
        double rotation = math.atan2(roll, pitch);

        double heading = (azimuth * (180 / math.pi) + 360) % 360;
        userDirection = heading;

        setState(() {});
      });
    });
  }

  void _stopListeningOrientation() {
    accelerometerEvents.drain();
    gyroscopeEvents.drain();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Qibla Compass'),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (orientation == Orientation.landscape &&
                    qiblaDirection != null &&
                    userDirection != null)
                  Transform.rotate(
                    angle: math.pi / 180 * (userDirection! - qiblaDirection!),
                    child: Image.asset(
                      'images/compass.png', // Replace with your compass image asset
                      width: 200,
                      height: 200,
                    ),
                  ),
                if (orientation == Orientation.portrait &&
                    qiblaDirection != null &&
                    userDirection != null)
                  Transform.rotate(
                    angle: math.pi / 180 * (userDirection! - qiblaDirection!),
                    child: Image.asset(
                      'images/qibla.png', // Replace with your compass image asset
                      width: 200,
                      height: 200,
                    ),
                  ),
                SizedBox(height: 20),
                if (qiblaDirection != null)
                  Text('Qibla Direction: ${qiblaDirection!.toStringAsFixed(2)}°'),
              ],
            ),
          );
        },
      ),
    );
  }
}
