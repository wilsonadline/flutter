import 'package:flutter/material.dart';
import 'package:secourspro/screens/Login/components/body.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
       body: SafeArea(
        child: Body(),
      ),
      extendBody: true,
    );    
  }
}