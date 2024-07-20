import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:go_router/go_router.dart';
import 'package:secourspro/screens/Activation_geolocalisation/components/pop_up.dart';
import 'package:secourspro/screens/Activation_geolocalisation/components/button.dart';

class ActiveLoc extends StatefulWidget {
  const ActiveLoc({super.key});

  @override
  State<ActiveLoc> createState() => _ActiveLocState();
}

class _ActiveLocState extends State<ActiveLoc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Service de Géolocalisation',
               style: GoogleFonts.robotoMono(
                textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Section(
              content: 'Bonjour,\nVeuillez activer votre localisation.',
            ),
            const Section(
              content: 'L\'application Secours Pro a besoin d\'accéder à votre localisation en arrière-plan afin de vous géocaliser le plus précisement possible dans les diverses situations d\'urgences.',
            ),
            const PopUp(),
            CustomButton(
              text: 'Suivant',
              onPressed: () {
                context.go('/config_page');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Section extends StatelessWidget {
  final String content;

  const Section({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 8),
          Text(
            content,
            style: GoogleFonts.robotoMono(
              textStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold)
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}