import 'package:flutter/material.dart';

import '../../../../core/constant/size.dart';

class YesNoRadioGroup extends StatefulWidget {
  @override
  _YesNoRadioGroupState createState() => _YesNoRadioGroupState();
}

class _YesNoRadioGroupState extends State<YesNoRadioGroup> {
  String selectedAnswer = 'Yes'; // default value

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSizes.paddingInside),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          RadioListTile<String>(
            title: Text('Yes', style: AppSizes.bolds(context)),
            value: 'Yes',
            groupValue: selectedAnswer,
            onChanged: (value) {
              setState(() {
                selectedAnswer = value!;
              });
            },
            contentPadding: EdgeInsets.zero,
          ),
          RadioListTile<String>(
            title: Text('No', style: AppSizes.bolds(context)),
            value: 'No',
            groupValue: selectedAnswer,
            onChanged: (value) {
              setState(() {
                selectedAnswer = value!;
              });
            },
            contentPadding: EdgeInsets.zero,
          ),
        ],
      ),
    );
  }
}
