import 'package:egov_bd/core/constant/size.dart';
import 'package:flutter/material.dart';

import '../../../../core/constant/app_colors.dart';

class CountryOriginDropdown extends StatefulWidget {
  @override
  State<CountryOriginDropdown> createState() => _CountryOriginDropdownState();
}

class _CountryOriginDropdownState extends State<CountryOriginDropdown> {
  String? selectedCountryList  = 'Bangladesh';

  final List<String> countryList  = [ 'Bangladesh',
    'India',
    'Pakistan',
    'Nepal',
    'Sri Lanka',
    'China',
    'United States',
    'United Kingdom',
    'Canada',
    'Australia',
    'Malaysia',
    'Singapore',
    'Japan',
    'Germany',
    'France',
    'Italy',
    'Saudi Arabia',
    'United Arab Emirates',
    'Qatar',
    'Other',];


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(AppSizes.normalPadding),
      child: Column(
        children: [
          buildStyledDropdown(
            label: "Country Origin",
            value: selectedCountryList,
            items: countryList,
            onChanged: (value) => setState(() => selectedCountryList = value),
            onClear: () => setState(() => selectedCountryList = null),
          ),
          SizedBox(height: AppSizes.sizeBoxW),

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
        border: Border.all(color: AppColors.gray),
        borderRadius: BorderRadius.circular(AppSizes.normalPadding),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Label on top
          Text(label,  style: AppSizes.accountText(context)),
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
                            child: Icon(Icons.clear, size: 16, color: Colors.grey),
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
