import 'package:flutter/material.dart';
import 'package:secourspro/components/fichesecours.dart';
import 'components/body.dart';

class IncidentsPage extends StatelessWidget {
  const IncidentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Stack(
        children: [
          Body(),
          Positioned(top: 16, right: 16, child: FicheSecours()),
        ],
      ),
    );
  }
}
