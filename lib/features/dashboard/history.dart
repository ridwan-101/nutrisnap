import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutrisnap/core/utils/colors.dart';

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
      body: Padding(
        padding: EdgeInsets.all(8.sp),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ReusablrContiner(
                  onTap: () {
                    print("hello Big H");
                  },
                  text: "Daily",
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ReusablrContiner extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;
  // final String boxText;
  const ReusablrContiner({
    super.key,
    required this.onTap,
    required this.text,
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
                borderRadius: BorderRadius.circular(6)),
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                    color: appColor.black,
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
