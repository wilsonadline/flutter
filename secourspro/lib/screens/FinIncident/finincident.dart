import 'package:flutter/material.dart';

import 'components/body.dart';

class FinIncident extends StatefulWidget {
  const FinIncident({super.key});

  @override
  State<FinIncident> createState() => _FinIncidentState();
}

class _FinIncidentState extends State<FinIncident> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Body(),
          ],
        ),
      ),
      extendBody: true,
    );
  }
}
