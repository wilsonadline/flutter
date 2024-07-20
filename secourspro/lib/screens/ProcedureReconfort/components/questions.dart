import 'package:flutter/material.dart';
import 'package:secourspro/components/bloc_content.dart';

class Questions extends StatelessWidget {
  const Questions({super.key});

  @override
  Widget build(BuildContext context) {
    return const ContentBloc(
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Questions',
              style: TextStyle(fontSize: 18), textAlign: TextAlign.left),
          SizedBox(height: 10),
          Text('- Qu\'est-ce que tu aimes faire pendant ton temps libre ?',
              style: TextStyle(fontSize: 14)),
          SizedBox(height: 10),
          Text(
              '- As-tu des animaux de compagnie ? Raconte-moi une histoire amusante à leur sujet.',
              style: TextStyle(fontSize: 14)),
          SizedBox(height: 10),
          Text(
              '- Quelle est la meilleure destination de vacances où tu es allé(e) ?',
              style: TextStyle(fontSize: 14)),
          SizedBox(height: 10),
          Text('- Quels sont tes films ou livres préférés ?',
              style: TextStyle(fontSize: 14)),
          SizedBox(height: 10),
          Text('- Parle-moi de quelque chose qui te rend heureux/heureuse.',
              style: TextStyle(fontSize: 14)),
        ],
      ),
    );
  }
}
