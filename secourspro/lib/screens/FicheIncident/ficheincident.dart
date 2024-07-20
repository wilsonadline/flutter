import 'package:flutter/material.dart';
import 'package:secourspro/components/colors.dart';
import 'package:secourspro/components/fichesecours.dart';

import 'components/body.dart';

class FicheIncident extends StatefulWidget {
  const FicheIncident({super.key, this.id});

  final String? id;

  @override
  State<FicheIncident> createState() => _FicheIncidentState();
}

class _FicheIncidentState extends State<FicheIncident> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Body(
              id: widget.id,
            ),
            const Positioned(top: 16, right: 16, child: FicheSecours()),
            Positioned(
                top: 16,
                left: 16,
                child: FloatingActionButton(
                  focusColor: white,
                  backgroundColor: white,
                  heroTag: null,
                  onPressed: () => Navigator.pop(context),
                  child: const Icon(Icons.arrow_back),
                )),
          ],
        ),
      ),
      extendBody: true,
    );
  }
}
