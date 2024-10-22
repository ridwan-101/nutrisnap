import 'package:flutter/material.dart';
import 'package:nutrisnap/core/utils/colors.dart';

class ChangeLang extends StatefulWidget {
  const ChangeLang({super.key});

  @override
  State<ChangeLang> createState() => _ChangeLangState();
}

class _ChangeLangState extends State<ChangeLang> {
  String? selectedLanguage = 'English (US)';
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: appColor.themeColor,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          RadioListTile<String>(
            title: Text('English (US)'),
            value: 'English (US)',
            groupValue: selectedLanguage,
            onChanged: (value) {
              setState(() {
                selectedLanguage = value;
              });
              Navigator.of(context).pop();
            },
          ),
          RadioListTile<String>(
            title: Text('English (UK)'),
            value: 'English (UK)',
            groupValue: selectedLanguage,
            onChanged: (value) {
              setState(() {
                selectedLanguage = value;
              });
              Navigator.of(context).pop();
            },
          ),
          RadioListTile<String>(
            title: Text('French'),
            value: 'French',
            groupValue: selectedLanguage,
            onChanged: (value) {
              setState(() {
                selectedLanguage = value;
              });
              Navigator.of(context).pop();
            },
          ),
          RadioListTile<String>(
            title: Text('Spanish'),
            value: 'Spanish',
            groupValue: selectedLanguage,
            onChanged: (value) {
              setState(() {
                selectedLanguage = value;
              });
              Navigator.of(context).pop();
            },
          ),
          RadioListTile<String>(
            title: Text('Arabic'),
            value: 'Arabic',
            groupValue: selectedLanguage,
            onChanged: (value) {
              setState(() {
                selectedLanguage = value;
              });
              Navigator.of(context).pop();
            },
          ),
          RadioListTile<String>(
            title: Text('Chinese'),
            value: 'Chinese',
            groupValue: selectedLanguage,
            onChanged: (value) {
              setState(() {
                selectedLanguage = value;
              });
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
      actions: [
        TextButton(
          child: Text('Cancel'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
