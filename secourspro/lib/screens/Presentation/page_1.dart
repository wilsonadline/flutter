import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:secourspro/screens/Presentation/components/button.dart';
import 'package:secourspro/screens/Presentation/components/image.dart';

class SecoursProPage extends StatelessWidget {
  const SecoursProPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Bienvenue',
               style: GoogleFonts.robotoMono(
                textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body:  Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const ImageSection(
                image: 'assets/images/Secours1.jpg',
               ),
              const Section(
                content: 'SecoursPro',
              ),
              const Section(
                content: 'Formation aux gestes de premiers secours.',
              ),
              const Section(
                content: 'Chaque seconde compte en cas d\'urgence. Les gestes de premiers secours peuvent faire la différence entre la vie et la mort.',
              ),
              const Section(
                content: 'Moins de 20% des personnes sont formées aux premiers secours, ce qui peut coûter des vies précieuses.',
              ),
              const Section(
                content: 'Avec SecoursPro, apprenez les gestes de premiers secours facilement, rapidement et efficacement grâce à une formation complète pour tous.',
              ),
              CustomButton(
                text: 'Suivant',
                onPressed: () {
                  context.go('/Page_2');
                },
              ),
            ],
          ),
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


