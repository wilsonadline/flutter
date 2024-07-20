import 'package:flutter/material.dart';

class MapsSection extends StatefulWidget {
  const MapsSection({super.key});

  @override
  State<MapsSection> createState() => _MapsSectionState();
}

class _MapsSectionState extends State<MapsSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Carte', style: TextStyle(fontSize: 20.0)),
        SizedBox(height: 20.0),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.grey,
          ),
          height: 200.0,
        ),
      ],
    );
  }
}
