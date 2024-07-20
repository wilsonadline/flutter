import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:secourspro/screens/Home/components/maps.dart';
import 'package:secourspro/screens/Home/components/news.dart';
import 'package:secourspro/screens/Home/components/sos.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            MapsSection(),
            SizedBox(height: 20.0),
            SosSection(),
            SizedBox(height: 20.0),
            NewsSection(),
          ],
        ),
      ),
    );
  }
}
