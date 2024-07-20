import 'package:flutter/material.dart';
import 'package:secourspro/screens/Incidents/components/incidentslist.dart';
import 'package:secourspro/screens/Incidents/components/search.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 100),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SearchBarIncidents(),
              SizedBox(height: 20),
              IncidentsList()
            ],
          ),
        ),
      ),
    );
  }
}
