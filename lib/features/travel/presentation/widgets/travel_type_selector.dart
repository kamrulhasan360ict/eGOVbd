import 'package:flutter/material.dart';

import '../../../../core/constant/size.dart';

class TravelTypeSelector extends StatefulWidget {
  @override
  _TravelTypeSelectorState createState() => _TravelTypeSelectorState();
}

class _TravelTypeSelectorState extends State<TravelTypeSelector> {
  String selectedType = 'Resident'; // default selected

  final List<String> travelTypes = [
    'Resident',
    'Hotel/Resort',
    'Transit via Airport',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: travelTypes.map((type) {
            return RadioListTile<String>(
              title: Text(type, style: AppSizes.bolds(context)),
              value: type,
              groupValue: selectedType,
              onChanged: (value) {
                setState(() {
                  selectedType = value!;
                });
              },
              contentPadding: EdgeInsets.zero,
            );
          }).toList(),
        ),
      ],
    );
  }
}
