import 'package:egov_bd/core/constant/app_colors.dart';
import 'package:egov_bd/core/constant/size.dart';
import 'package:flutter/material.dart';

class TravelTypeDropdown extends StatefulWidget {
  @override
  State<TravelTypeDropdown> createState() => _TravelTypeDropdownState();
}

class _TravelTypeDropdownState extends State<TravelTypeDropdown> {
  String? selectedPurposeTravel = 'Holiday / Pleasure / Vacation';
  String? selectedTravellerType = 'Government Official';

  final List<String> purposeTravel = [
    'Holiday / Pleasure / Vacation',
    'Business',
    'Education',
    'Employment',
    'Medical Treatment',
    'Transit',
    'Conference / Seminar',
    'Visiting Friends / Relatives',
    'Official / Government Duty',
    'Religious',
    'Other',
  ];
  final List<String> travellerType = [
    'Individual',
    'Family',
    'Group',
    'Diplomat',
    'Government Official',
    'Crew Member',
    'Refugee / Immigrant',
    'Transit Passenger',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppSizes.normalPadding),
      child: Column(
        children: [
          buildStyledDropdown(
            label: "Purpose of Travel",
            value: selectedPurposeTravel,
            items: purposeTravel,
            onChanged: (value) => setState(() => selectedPurposeTravel = value),
            onClear: () => setState(() => selectedPurposeTravel = null),
          ),
          SizedBox(height: AppSizes.sizeBoxW),
          buildStyledDropdown(
            label: "Traveller type",
            value: selectedTravellerType,
            items: travellerType,
            onChanged: (value) => setState(() => selectedTravellerType = value),
            onClear: () => setState(() => selectedTravellerType = null),
          ),
        ],
      ),
    );
  }

  Widget buildStyledDropdown({
    required String label,
    required String? value,
    required List<String> items,
    required Function(String?) onChanged,
    required VoidCallback onClear,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(color:AppColors.gray),
        borderRadius: BorderRadius.circular(AppSizes.normalPadding),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Label on top
          Text(label, style: AppSizes.accountText(context)),
          Row(
            children: [
              // Dropdown Button Expanded
              Expanded(
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: value,
                    isExpanded: true,
                    icon: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (value != null)
                          GestureDetector(
                            onTap: onClear,
                            child:
                                Icon(Icons.clear, size: 16, color: Colors.grey),
                          ),
                        Icon(Icons.arrow_drop_down, color: Colors.black),
                      ],
                    ),
                    style:AppSizes.bolds(context),
                    onChanged: onChanged,
                    items: items
                        .map((item) => DropdownMenuItem(
                              value: item,
                              child: Text(item),
                            ))
                        .toList(),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
