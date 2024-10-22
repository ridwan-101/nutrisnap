// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

///import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutrisnap/core/shared/asset.dart';
import 'package:nutrisnap/core/utils/colors.dart';
//import 'package:nutrisnap/features/dashboard/radial_bar_chart.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class History extends StatefulWidget {
  final List<Widget>? children;
  final List<VoidCallback>? onTaps;

  History({this.children, this.onTaps});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your History'),
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.sp),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //
                  ReusablrContiner(onTap: () {}, icon: Icons.calendar_month),
                  ReusablrContiner(
                    onTap: () {},
                    text: "Daily",
                  ),
                  ReusablrContiner(
                    onTap: () {},
                    text: "Weekly",
                  ),
                  ReusablrContiner(
                    onTap: () {},
                    text: "Monthly",
                  ),
                  ReusablrContiner(
                    onTap: () {},
                    text: "Yearly",
                  ),
                ],
              ),
              SizedBox(height: 25.h),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 340.w,
                  padding: EdgeInsets.all(16.sp),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: appColor.themeColor,
                    // borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment
                              .spaceBetween, // Pushes content to the edges
                          children: [
                            Text(
                              'History Chart',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: appColor.white),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Image.asset(krefresh),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total Calorie Consumed',
                              style: TextStyle(
                                color: appColor.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          '5034 KCal',
                          style: TextStyle(
                            color: appColor.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(height: 10.h),
                        Text(
                          'Cycle Chart of Calorie consumed',
                          style: TextStyle(
                            color: appColor.white,
                            fontSize: 16,
                          ),
                        ),
                        // SizedBox(height: 15.h),

                        SizedBox(height: 20),

                        Row(
                          children: [
                            SfRadialGauge(
                              axes: <RadialAxis>[
                                RadialAxis(
                                  radiusFactor: 0.25,
                                  pointers: <GaugePointer>[
                                    RangePointer(
                                      value: 80,
                                      cornerStyle: CornerStyle.bothCurve,
                                      color: Colors.redAccent,
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Kcal',
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: appColor.white),
                                          ),
                                          // Text(
                                          //   'Water',
                                          //   style: TextStyle(fontSize: 18),
                                          // )
                                        ],
                                      ),
                                      angle: 90,
                                      positionFactor: 0.1,
                                    )
                                  ],
                                ),
                                RadialAxis(
                                  radiusFactor: 0.35,
                                  pointers: [
                                    RangePointer(
                                        value: 60,
                                        cornerStyle: CornerStyle.bothCurve,
                                        color: Colors.deepOrangeAccent)
                                  ],
                                  interval: 5,
                                  startAngle: 20,
                                  endAngle: 20,
                                  showTicks: false,
                                  showLabels: false,
                                ),
                                RadialAxis(
                                  radiusFactor: 0.45,
                                  pointers: [
                                    RangePointer(
                                      value: 40,
                                      cornerStyle: CornerStyle.bothCurve,
                                      color: Colors.yellow,
                                    )
                                  ],
                                  interval: 5,
                                  startAngle: 20,
                                  endAngle: 20,
                                  showTicks: false,
                                  showLabels: false,
                                ),
                                RadialAxis(
                                  radiusFactor: 0.55,
                                  pointers: [
                                    RangePointer(
                                      value: 30,
                                      cornerStyle: CornerStyle.bothCurve,
                                      color: Colors.greenAccent,
                                    )
                                  ],
                                  interval: 5,
                                  startAngle: 20,
                                  endAngle: 20,
                                  showTicks: false,
                                  showLabels: false,
                                ),
                                RadialAxis(
                                  radiusFactor: 0.65,
                                  pointers: [
                                    RangePointer(
                                      value: 20,
                                      cornerStyle: CornerStyle.bothCurve,
                                      color: Colors.lightBlue,
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
                      ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ReusablrContiner extends StatelessWidget {
  final String? text;
  final VoidCallback? onTap;
  final IconData? icon;
  // final String boxText;
  const ReusablrContiner({
    super.key,
    this.onTap,
    this.text,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Container(
            height: 30.h,
            width: 59.w,
            decoration: BoxDecoration(
                color: appColor.transparent,
                border: Border.all(color: appColor.green),
                borderRadius: BorderRadius.circular(7)),
            child: Center(
              child: icon != null
                  ? Icon(
                      icon,
                      size: 20.sp,
                    )
                  : Text(
                      text ?? '',
                      style: TextStyle(
                          color: appColor.green,
                          fontSize: 8,
                          fontStyle: FontStyle.normal),
                    ),
            ),
          ),
        )
      ],
    );
  }
}
