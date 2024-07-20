import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class SecoursProPage2 extends StatelessWidget {
  const SecoursProPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Fonctionnalités de SecoursPro',
              style: GoogleFonts.robotoMono(
                textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(30.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Section(
                      title: "Cours interactifs",
                      content:
                          'Apprenez avec des vidéos et animations captivantes, adaptées à tous les niveaux.',
                      iconData: Icons.book,
                    ),
                    Section(
                      title: "Intégration pour les entreprises",
                      content:
                          "Permettre aux entreprises d'intégrer notre système de formation pour former leurs employés en interne.",
                      iconData: Icons.business,
                    ),
                    Section(
                      title: "Appel d'urgence interactif",
                      content:
                          'Recevez des instructions claires et précises en temps réel pour gérer les situations urgences.',
                    iconData: Icons.phone,
                    ),
                    Section(
                      title: 'Formation continue',
                      content:
                          'Restez à jour sur les dernières pratiques et protocoles en premiers secours.',
                      iconData: Icons.school,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    context.go('/');
                  },
                  child: const Text('Retour'),
                ),
                const SizedBox(width: 30),
                ElevatedButton(
                  onPressed: () {
                    context.go('/active_loc');
                  },
                  child: const Text('Suivant'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Section extends StatelessWidget {
  final String content;
  final String title;
  final IconData iconData;

  const Section({super.key, required this.title, required this.content, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 45.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 8),
          Text(
            title,
            style: GoogleFonts.robotoMono(
              textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Icon(
            iconData,
            size: 40, // Adjust the size as per your requirement
            color: const Color.fromARGB(255, 104, 119, 132), // Adjust the color as per your requirement
          ),
          const SizedBox(height: 8),
          Text(
            content,
            style: GoogleFonts.robotoMono(
              textStyle: const TextStyle(fontSize: 12),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
