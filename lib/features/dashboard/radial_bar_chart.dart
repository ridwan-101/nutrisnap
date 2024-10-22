import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutrisnap/core/utils/colors.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class RadialBarChart extends StatelessWidget {
  const RadialBarChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: appColor.themeColor,
      surfaceTintColor: appColor.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SfRadialGauge(
                  axes: <RadialAxis>[
                    RadialAxis(
                      radiusFactor: 0.5,
                      pointers: <GaugePointer>[
                        RangePointer(
                          value: 80,
                          cornerStyle: CornerStyle.bothCurve,
                          color: Colors.amberAccent,
                        )
                      ],
                      interval: 5,
                      startAngle: 5,
                      endAngle: 5,
                      showTicks: false,
                      showLabels: false,
                      annotations: <GaugeAnnotation>[
                        GaugeAnnotation(
                          widget: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '30%',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              Text(
                                'Water',
                                style: TextStyle(fontSize: 18),
                              )
                            ],
                          ),
                          angle: 90,
                          positionFactor: 0.1,
                        )
                      ],
                    ),
                    RadialAxis(
                      radiusFactor: 0.6,
                      pointers: [
                        RangePointer(
                          value: 80,
                          cornerStyle: CornerStyle.bothCurve,
                          color: appColor.themeColor,
                        )
                      ],
                      interval: 5,
                      startAngle: 20,
                      endAngle: 20,
                      showTicks: false,
                      showLabels: false,
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
