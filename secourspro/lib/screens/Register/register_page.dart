import 'package:flutter/material.dart';
import 'package:secourspro/screens/Register/components/body.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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