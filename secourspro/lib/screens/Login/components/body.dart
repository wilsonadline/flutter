import 'package:flutter/material.dart';
import 'package:secourspro/screens/Login/components/content.dart';
import 'package:secourspro/screens/Login/components/form.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Content(),
            FormPage(),
          ],
        ),
      );
  }
}