import 'package:flutter/material.dart';
import 'package:kdgaugeview/kdgaugeview.dart';

class meter extends StatefulWidget {
  const meter({super.key});

  @override
  State<meter> createState() => _meterState();
}

class _meterState extends State<meter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 400,
              width: 400,
              padding: EdgeInsets.all(10),
              child: KdGaugeView(
                minSpeed: 0,
                maxSpeed: 100,
                speed: 10,
                animate: true,
                duration: Duration(seconds: 5),
                alertSpeedArray: [40, 80, 90],
                alertColorArray: [Colors.orange, Colors.indigo, Colors.red],
                unitOfMeasurement: 'Mbps',
                gaugeWidth: 20,
                fractionDigits: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
