import 'package:flutter/material.dart';
import 'package:nutrisnap/core/utils/colors.dart';

class LanguageSelection extends StatefulWidget {
  const LanguageSelection({Key? key}) : super(key: key);

  @override
  State<LanguageSelection> createState() => _LanguageSelectionState();
}

class _LanguageSelectionState extends State<LanguageSelection> {
  String? selectedLanguage;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: appColor.themeColor,
      content: Container(
        child: SingleChildScrollView(
          child: Column(
            
            children: [
              
              RadioListTile<String>(
                title:  Text('English (US)'),
                value: 'English (US)',
                groupValue: selectedLanguage,
                onChanged: (value) {
                  setState(() {
                    selectedLanguage = value;
                  });
                },
              ),
              RadioListTile<String>(
                title:  Text('English (UK)'),
                value: 'English (UK)',
                groupValue: selectedLanguage,
                onChanged: (value) {
                  setState(() {
                    selectedLanguage = value;
                  });
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
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
