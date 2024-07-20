import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:secourspro/screens/Activation_geolocalisation/components/button.dart';
import 'package:secourspro/screens/FicheIncident/components/gestes.dart';
import 'package:secourspro/screens/FicheIncident/components/videogestes.dart';

class Body extends StatefulWidget {
  const Body({super.key, this.id});

  final String? id;

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
            Text('Fiche incident ${widget.id}',
                style: const TextStyle(fontSize: 24)),
            const SizedBox(height: 20.0),
            const Gestes(),
            const SizedBox(height: 20.0),
            const VideoGestes(),
            const SizedBox(height: 20.0),
            Align(
              alignment: Alignment.centerRight,
              child: CustomButton(
                text: 'Suivant',
                onPressed: () {
                  context.push('/procedurereconfort');
                },
              ),
            ),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
