import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:secourspro/components/bloc_content.dart';

class SecoursArrives extends StatelessWidget {
  const SecoursArrives({super.key});

  @override
  Widget build(BuildContext context) {
    return ContentBloc(
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Les secours sont arrivés ?',
              style: TextStyle(fontSize: 18), textAlign: TextAlign.center),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  context.go('/finincident');
                },
                child: const Text('Oui'),
              ),
              // const SizedBox(width: 10),
              // ElevatedButton(
              //   onPressed: () {
              //     // context.go('/');
              //   },
              //   child: const Text('Non'),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
