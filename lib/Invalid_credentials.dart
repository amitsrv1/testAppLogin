import 'package:flutter/material.dart';

class InvalidCredentials extends StatefulWidget {
  const InvalidCredentials({super.key});

  @override
  State<InvalidCredentials> createState() => _InvalidCredentialsState();
}

class _InvalidCredentialsState extends State<InvalidCredentials> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Center(child: Text('Invalid Data'),)),
    );
  }
}
