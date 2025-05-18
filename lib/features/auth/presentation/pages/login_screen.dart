import 'package:egov_bd/core/constant/app_colors.dart';
import 'package:egov_bd/core/constant/app_name.dart';
import 'package:egov_bd/core/constant/size.dart';
import 'package:egov_bd/features/auth/presentation/pages/email_otp_screen.dart';
import 'package:egov_bd/features/auth/presentation/pages/sign_up%20_screen.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/app_text_form_field.dart';
import '../../../../core/widgets/bottom _nev_bar.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController _emailTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(AppSizes.paddingBody),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello, Welcome!',
                  style: AppSizes.lbigBold(context),
                ),
                Row(
                  children: [
                    Text('Login to ', style: AppSizes.normalBolds(context)),
                    Text(
                      AppConstants.appName,
                      style: AppSizes.appName(context),
                    )
                  ],
                ),
                SizedBox(
                  height: AppSizes.lsizeBox40,
                ),
                CustomTextField(
                  controller: _emailTEController,
                  hintText: 'Enter your email',
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: 120,
                ),
                // Spacer(),
                ElevatedButton(
                    onPressed: () {
                      // Navigator.pushAndRemoveUntil(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => EmailOtpScreen()),
                      //   (Route<dynamic> route) => false,
                      // );

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MainBottomNavScreen()));
                    },
                    child:
                        Text('Login', style: AppSizes.hadingTextBold(context))),
                SizedBox(
                  height: AppSizes.paddingInside,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: AppSizes.paddingInside),
                      child: Text("or"),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: AppSizes.fontSizeOverLarge,
                ),
                Center(
                  child: Text(
                    'Donot have eGOVbd account yet? ',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ),
                SizedBox(
                  height: AppSizes.fontSizeOverLarge,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(color: Colors.grey.shade300),
                    ),
                    padding:
                        EdgeInsets.symmetric(vertical: AppSizes.paddingBody),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignUpScreen()));

                  },
                  child: Text(
                    'Create new account',
                    style: TextStyle(
                      color: AppColors.leadingTColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
