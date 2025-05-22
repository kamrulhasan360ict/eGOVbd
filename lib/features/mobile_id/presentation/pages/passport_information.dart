import 'package:egov_bd/core/constant/app_colors.dart';
import 'package:egov_bd/core/constant/app_route/app_route.dart';
import 'package:egov_bd/core/constant/size.dart';
import 'package:egov_bd/features/mobile_id/presentation/pages/passport_update.dart';
import 'package:flutter/material.dart';

class PassportInformation extends StatefulWidget {
  const PassportInformation({super.key});

  @override
  State<PassportInformation> createState() => _PassportInformationState();
}

class _PassportInformationState extends State<PassportInformation> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController passportNumberController = TextEditingController();
  final TextEditingController expiryDateController = TextEditingController();
  final TextEditingController issueDateController = TextEditingController();


  @override
  void dispose() {
    passportNumberController.dispose();
    expiryDateController.dispose();

    issueDateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(

        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              controller: passportNumberController,
              decoration: const InputDecoration(labelText: 'Passport Number'),
              // validator: (value) => value!.isEmpty ? 'Required' : null,
            ),
            TextFormField(
              controller: expiryDateController,
              decoration: const InputDecoration(labelText: 'Date of Expiry (mm/dd/yyyy) '),

              // validator: (value) => value!.isEmpty ? 'Required' : null,
            ),


            TextFormField(
              controller: issueDateController,
              decoration: const InputDecoration(labelText: 'Issued Date (mm/dd/yyyy)'),
              // validator: (value) => value!.isEmpty ? 'Required' : null,
            ),
            TextFormField(
              controller: issueDateController,
              decoration: const InputDecoration(labelText: 'Issued State'),
              // validator: (value) => value!.isEmpty ? 'Required' : null,
            ),

            const SizedBox(height: 20),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                     AppRoutes.push(context, page: PassportUpdate());
                    },
                    child:  Text('Update Passport',style: AppSizes.normalTexButton(context),),
                  ),
                ),
                 SizedBox(width: AppSizes.sizeBox),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.leadingTColor,
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.of(context).pop();
                      }
                    },
                    child:  Text("Yes",style: AppSizes.normalTextBold(context),),
                  ),
                ),
              ],
            ),



          ],
        ),
      ),
    );
  }
}
