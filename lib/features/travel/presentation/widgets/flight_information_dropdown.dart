import 'package:egov_bd/core/constant/size.dart';
import 'package:flutter/material.dart';

import '../../../../core/constant/app_colors.dart';

class FlightInformationDropdown extends StatefulWidget {
  @override
  State<FlightInformationDropdown> createState() => _FlightInformationDropdownState();
}

class _FlightInformationDropdownState extends State<FlightInformationDropdown> {
  String? selectedAirline = 'AirAsia';
  String? selectedFlight = 'AK582';

  final List<String> airlines = ['AirAsia', 'Emirates', 'Biman', 'US-Bangla'];
  final List<String> flights = ['AK582', 'EK303', 'BG88', 'BS202'];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(AppSizes.normalPadding),
      child: Column(
        children: [
          buildStyledDropdown(
            label: "Name of Airline",
            value: selectedAirline,
            items: airlines,
            onChanged: (value) => setState(() => selectedAirline = value),
            onClear: () => setState(() => selectedAirline = null),
          ),
          SizedBox(height: AppSizes.sizeBoxW),
          buildStyledDropdown(
            label: "Flight Number",
            value: selectedFlight,
            items: flights,
            onChanged: (value) => setState(() => selectedFlight = value),
            onClear: () => setState(() => selectedFlight = null),
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
