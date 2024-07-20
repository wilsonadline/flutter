import 'package:flutter/material.dart';

import 'content.dart';

class Body extends StatefulWidget {
  const Body({super.key});


  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 100),
        child: Column(
          children: <Widget>[
            Text('Fin de l\'incident',
                style: const TextStyle(fontSize: 24)),
            const SizedBox(height: 20.0),
            const Content(),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
