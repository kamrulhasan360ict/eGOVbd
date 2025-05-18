import 'package:flutter/material.dart';

class LgusScreen extends StatefulWidget {
  const LgusScreen({super.key});

  @override
  State<LgusScreen> createState() => _LgusScreenState();
}

class _LgusScreenState extends State<LgusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('LGUs'),
      ),
    );
  }
}
