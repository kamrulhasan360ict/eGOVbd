import 'package:flutter/material.dart';

class NgasScreen extends StatefulWidget {
  const NgasScreen({super.key});

  @override
  State<NgasScreen> createState() => _NgasScreenState();
}

class _NgasScreenState extends State<NgasScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('NGAs'),
      ),
    );
  }
}
