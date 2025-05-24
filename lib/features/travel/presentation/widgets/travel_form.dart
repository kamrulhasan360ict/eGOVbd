import 'package:flutter/material.dart';

class TravelForm extends StatefulWidget {
  @override
  _TravelFormState createState() => _TravelFormState();
}

class _TravelFormState extends State<TravelForm> {
  String selectedUser = 'me';
  String travelMode = 'air';
  String tripDirection = 'arrival';
  bool specialFlight = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // User Type Toggle
        Row(
          children: [
            Expanded(
              child: ChoiceChip(
                label: Text("FOR ME\n(Current User)", textAlign: TextAlign.center),
                selected: selectedUser == 'me',
                onSelected: (_) => setState(() => selectedUser = 'me'),
                selectedColor: Colors.blue,
                labelStyle: TextStyle(color: selectedUser == 'me' ? Colors.white : Colors.black),
              ),
            ),
            Expanded(
              child: ChoiceChip(
                label: Text("FOR OTHER\n(Family Member)", textAlign: TextAlign.center),
                selected: selectedUser == 'other',
                onSelected: (_) => setState(() => selectedUser = 'other'),
                selectedColor: Colors.blue,
                labelStyle: TextStyle(color: selectedUser == 'other' ? Colors.white : Colors.black),
              ),
            ),
          ],
        ),
        SizedBox(height: 8),

        // Travel Mode Toggle
        // Row(
        //   children: [
        //     Expanded(
        //       child: ChoiceChip(
        //         label: Text("AIR"),
        //         selected: travelMode == 'air',
        //         onSelected: (_) => setState(() => travelMode = 'air'),
        //         selectedColor: Colors.blue,
        //         labelStyle: TextStyle(color: travelMode == 'air' ? Colors.white : Colors.black),
        //       ),
        //     ),
        //     Expanded(
        //       child: ChoiceChip(
        //         label: Text("SEA"),
        //         selected: travelMode == 'sea',
        //         onSelected: (_) => setState(() => travelMode = 'sea'),
        //         selectedColor: Colors.blue,
        //         labelStyle: TextStyle(color: travelMode == 'sea' ? Colors.white : Colors.black),
        //       ),
        //     ),
        //   ],
        // ),
        SizedBox(height: 8),

        // Arrival/Departure
        Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CheckboxListTile(
                          value: specialFlight,
                          onChanged: (value) => setState(() => specialFlight = value!),
                          title: Text("Special Flight"),
                          controlAffinity: ListTileControlAffinity.leading,
                        ),
                      ],
                      
                    ),
                    Text('ARRIVAL\nEntering the Philippines')
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CheckboxListTile(
                          value: specialFlight,
                          onChanged: (value) => setState(() => specialFlight = value!),
                          title: Text("Special Flight"),
                          controlAffinity: ListTileControlAffinity.leading,
                        ),
                      ],

                    ),
                    Text('ARRIVAL\nEntering the Philippines')
                  ],
                ),
              ),
            ),
          ],
        ),


        // Special Flight Checkbox
        CheckboxListTile(
          value: specialFlight,
          onChanged: (value) => setState(() => specialFlight = value!),
          title: Text("Special Flight"),
          controlAffinity: ListTileControlAffinity.leading,
        ),
      ],
    );
  }
}
