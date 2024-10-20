// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutrisnap/core/shared/asset.dart';
import 'package:nutrisnap/core/utils/colors.dart';
//import 'package:nutrisnap/features/dashboard/history.dart';

class HomeDashboard extends StatefulWidget {
  final List<Widget>? children;
  final List<VoidCallback>? onTaps;
  static const routeName = '/homeDashboard';
  const HomeDashboard({this.children, super.key, this.onTaps});

  @override
  State<HomeDashboard> createState() => _HomeDashboardState();
}

class _HomeDashboardState extends State<HomeDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                  height: 145.h,
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
                          child: Image.asset(kfruit),
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
                                fontSize: 12, fontWeight: FontWeight.bold),
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
                          color: appColor.gray,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
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
                      SizedBox(height: 20),

                      // Placeholder for Pie Chart

                      Container(
                        height: 120, // Height for the pie chart
                        decoration: BoxDecoration(
                          color: Colors.grey[800], // Temporary background color
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                            child: Text(
                                'Pie Chart Placeholder')), // Placeholder text
                      ),

                      SizedBox(height: 10),

                      // Nutrient Legend
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 10,
                            height: 10,
                            color: Colors.red, // Protein
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Protein (22%)',
                          ),
                          SizedBox(width: 20),
                          Container(
                            width: 10,
                            height: 10,
                            color: Colors.blue, // Carbohydrate
                          ),
                          SizedBox(width: 5),
                          Text('Carbohydrate (9%)'),
                          SizedBox(width: 20),
                          Container(
                            width: 10,
                            height: 10,
                            color: Colors.yellow, // Vitamins
                          ),
                          SizedBox(width: 5),
                          Text('Vitamins (16%)'),
                          SizedBox(width: 20),
                          Container(
                            width: 10,
                            height: 10,
                            color: Colors.green, // Fat and Oils
                          ),
                          SizedBox(width: 5),
                          Text('Fat and Oils (25%)'),
                          SizedBox(width: 20),
                          Container(
                            width: 10,
                            height: 10,
                            color: Colors.orange, // Minerals
                          ),
                          SizedBox(width: 5),
                          Text('Minerals (28%)'),
                        ],
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
            height: 28.h,
            width: 72.w,
            decoration: BoxDecoration(
                color: appColor.themeColor,
                //border: Border.all(color: appColor.green),
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
                          color: appColor.white,
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
