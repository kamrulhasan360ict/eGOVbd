import 'package:egov_bd/core/constant/app_name.dart';
import 'package:egov_bd/core/constant/size.dart';
import 'package:egov_bd/core/widgets/app_text_form_field.dart';
import 'package:egov_bd/features/auth/presentation/pages/login_screen.dart';
import 'package:flutter/material.dart';

import '../../../../core/constant/app_colors.dart';
import '../../../../core/widgets/check_box.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _nameTEController = TextEditingController();

  final TextEditingController _suffixTEController = TextEditingController();

  final TextEditingController _middleNameTEController = TextEditingController();

  final TextEditingController _lastNameTEController = TextEditingController();

  final TextEditingController _emailTEController = TextEditingController();

  final ValueNotifier<bool> _noMiddleName = ValueNotifier(false);

  @override
  void dispose() {
    _noMiddleName.dispose();
    super.dispose();
  }

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
                SizedBox(
                  height: AppSizes.sizeBox,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: CustomTextField(
                          controller: _nameTEController,
                          hintText: 'First Name',
                        ),
                      ),
                    ),
                    SizedBox(
                      width: AppSizes.sizeBox,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: CustomTextField(
                          controller: _suffixTEController,
                          hintText: 'Suffix',
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: AppSizes.sizeBox,
                ),
                CustomTextField(
                  controller: _middleNameTEController,
                  hintText: 'Middle Name',
                ),
                SizedBox(
                  height: AppSizes.sizeBox,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TickBoxWithLabel(
                      notifier: _noMiddleName,
                      label: '', // leave empty here because text is outside
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      'I have no middle name',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(
                  height: AppSizes.sizeBox,
                ),
                CustomTextField(
                  controller: _lastNameTEController,
                  hintText: 'Last Name',
                ),
                SizedBox(
                  height: AppSizes.sizeBox,
                ),
                CustomTextField(
                  controller: _emailTEController,
                  hintText: 'Email Address',
                ),
                SizedBox(
                  height: AppSizes.lsizeBox40,
                ),
                Wrap(
                  children: [
                    Text('By tapping '),
                    Text('Create new account,', style: AppSizes.normalBolds(context)),
                    Text(' you agree with the '),
                    Text('Terms and Conditions', style: AppSizes.normalBolds(context)),
                    Text(' and '),
                    Text('Privacy Policy', style: AppSizes.normalBolds(context)),
                  ],
                ),

                SizedBox(
                  height: AppSizes.lsizeBox40,
                ),

                ElevatedButton(
                    onPressed: () {},
                    child: Text('Create new account',
                        style: AppSizes.hadingTextBold(context))),
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
                    'Already have an eGOVbd account? ',
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
                    // Text color
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(color: Colors.grey.shade300),
                    ),
                    padding:
                        EdgeInsets.symmetric(vertical: AppSizes.paddingBody),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: Text(
                    'Login here',
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
