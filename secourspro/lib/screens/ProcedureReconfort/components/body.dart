import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:secourspro/screens/ProcedureReconfort/components/questions.dart';
import 'package:secourspro/screens/ProcedureReconfort/components/secoursarriv%C3%A9s.dart';
import 'package:secourspro/screens/ProcedureReconfort/procedurereconfort.dart';

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
            Text('Procédure de réconfort',
                style: const TextStyle(fontSize: 24)),
            const SizedBox(height: 20.0),
            const Questions(),
            const SizedBox(height: 20.0),
            const SecoursArrives(),
            // const SizedBox(height: 20.0),
            // Align(
            //   alignment: Alignment.centerRight,
            //   child: CustomButton(
            //     text: 'Suivant',
            //     onPressed: () {
            //       context.push('/procedurereconfort');
            //     },
            //   ),
            // ),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
