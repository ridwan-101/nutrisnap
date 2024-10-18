// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutrisnap/core/shared/asset.dart';
import 'package:nutrisnap/core/utils/colors.dart';
import 'package:pie_chart/pie_chart.dart';

class HomeDashboard extends StatefulWidget {
  static const routeName = '/homeDashboard';

  HomeDashboard({super.key});

  @override
  State<HomeDashboard> createState() => _HomeDashboardState();
}

class _HomeDashboardState extends State<HomeDashboard> {
  Map<String, double> dataMap = {
    "Protein ": 22,
    "Carbohydrate ": 9,
    "Vitamins ": 16,
    "Fat and oils ": 25,
    "Mineraals ": 28,
  };

  List<Color> colorlist = [
    Colors.orange,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.red
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://plus.unsplash.com/premium_photo-1664366737698-3a98169201c3?q=80&w=3774&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
          ),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Hello, Ridwan',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 115.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: appColor.themeColor,
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: EdgeInsets.all(16.sp),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment
                          .spaceBetween, // Pushes content to the edges
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'You have properly tracked\n your diet for',
                              style: TextStyle(
                                  color: appColor.white, fontSize: 18),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '22 DAYS',
                              style: TextStyle(
                                  color: appColor.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Image.asset(
                              kfruit), // This will position the image on the right
                        ),
                      ],
                    ),
                  ),
                ),

                // New Container for Calorie and Diet Chart
                SizedBox(height: 20),

                Container(
                  padding: EdgeInsets.all(16.sp),
                  decoration: BoxDecoration(
                    color: appColor.white,
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
                            'Calorie and Diet Chart',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Image.asset(
                                krefresh), // This will position the image on the right
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
                              color: appColor.themeColor,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Image.asset(
                                kcalender), // This will position the image on the right
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        '1503 KCal',
                        style: TextStyle(
                          color: appColor.themeColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        'Sort the chart with time',
                        style: TextStyle(
                          color: appColor.lightGrey4,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  'Daily',
                                  style: TextStyle(color: appColor.white),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: appColor.themeColor,
                                )),
                            SizedBox(
                              width: 7,
                            ),
                            ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  'Weekly',
                                  style: TextStyle(color: appColor.white),
                                ),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: appColor.themeColor)),
                            SizedBox(
                              width: 7,
                            ),
                            ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  'Monthly',
                                  style: TextStyle(color: appColor.white),
                                ),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: appColor.themeColor)),
                            SizedBox(
                              width: 7,
                            ),
                            ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  'Yearly',
                                  style: TextStyle(color: appColor.white),
                                ),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: appColor.themeColor)),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      PieChart(
                        colorList: colorlist,
                        dataMap: dataMap,
                        chartRadius: MediaQuery.of(context).size.width,
                        chartValuesOptions: ChartValuesOptions(
                            showChartValuesInPercentage: true),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
