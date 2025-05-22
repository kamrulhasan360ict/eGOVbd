import 'package:device_preview/device_preview.dart';
import 'package:egov_bd/features/auth/presentation/pages/login_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'app/app_theme.dart';

void main() => runApp(
  DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MyApp(), // Wrap your app
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'eGov bd',
      theme: AppTheme.lightTheme,
      home: LoginScreen(),
    );
  }
}

