import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Content extends StatelessWidget {
  const Content({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3))
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Merci à vous pour votre intervention.',
              style: TextStyle(fontSize: 14)),
          const SizedBox(height: 10),
          Center(
            child: ElevatedButton(
              onPressed: () {
                context.go('/home');
              },
              child: const Text('Retour à l\'accueil'),
            ),
          ),
        ],
      ),
    );
  }
}
