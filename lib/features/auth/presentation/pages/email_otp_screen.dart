import 'package:egov_bd/core/constant/app_name.dart';
import 'package:egov_bd/core/constant/size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class EmailOtpScreen extends StatefulWidget {
  const EmailOtpScreen({super.key});

  @override
  State<EmailOtpScreen> createState() => _EmailOtpScreenState();
}

class _EmailOtpScreenState extends State<EmailOtpScreen> {
  TextEditingController _emailTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.paddingBody),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppConstants.appName,
                style: AppSizes.appName(context),
              ),
              SizedBox(
                height: AppSizes.lsizeBox24,
              ),
              Text(
                'Lets Get Started!',
                style: AppSizes.lbigBold(context),
              ),
              SizedBox(height: AppSizes.paddingBody,),
              Text('Enter a 6-digit passcode below'),
              SizedBox(
                height: AppSizes.lsizeBox24,
              ),
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Your widgets here
                      
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('MPIN',style: AppSizes.normalSize(context),), Text('Clear',style: AppSizes.normalSize(context)),
                        ],
                      ),
                      SizedBox(height: AppSizes.sizeBox,),
                      OtpTextField(
                        numberOfFields: 6,
                        borderColor: const Color(0xFF512DA8),
                        showFieldAsBox: true,
                        borderRadius: BorderRadius.circular(8),
                        onCodeChanged: (String code) {},
                        // onSubmit: (String verificationCode) {
                        //   showDialog(
                        //     context: context,
                        //     builder: (context) {
                        //       return AlertDialog(
                        //         title: const Text("Verification Code"),
                        //         content: Text('Code entered is $verificationCode'),
                        //         actions: [
                        //           TextButton(
                        //             onPressed: () => Navigator.pop(context),
                        //             child: const Text('OK'),
                        //           ),
                        //         ],
                        //       );
                        //     },
                        //   );
                        // },
                      ),

                      SizedBox(height: AppSizes.lsizeBox24,),

                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         TextButton(onPressed: (){}, child: Text('Forgot MPIN?',style: AppSizes.vbigBold(context),)),
                       ],
                     ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                          Text(_emailTEController.text),
                        ],
                      )

                    ],
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
