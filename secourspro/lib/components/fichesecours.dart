import 'package:flutter/material.dart';
import 'package:secourspro/components/colors.dart';

class FicheSecours extends StatelessWidget {
  const FicheSecours({super.key});

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      showDragHandle: true,
      useSafeArea: true,
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(16.0),
          child: const SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Fiche secours',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ),
                Text(
                  '1/ Je m\'appelle VOTRE NOM. (préciser si vous êtes secouriste)',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 30),
                Text(
                  '2/ Je me trouve à ADRESSE (préciser adresse exacte du lieu de l\'accident)',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 30),
                Text(
                  '3/ Préciser les circonstances de l’accident',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 30),
                Text(
                  '4/ Donner le bilan vital (conscience, respiration, circulation) de la ou les victimes',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 30),
                Text(
                  '5/ Indiquer le nombre de victimes',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 30),
                Text(
                  '6/ Indiquer les premiers gestes effectués sur la ou les victimes',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 30),
                Text(
                  '7/ Indiquer le matériel dont vous disposez (oxygénothérapie, défibrillateur, trousse de premiers secours, brancard…)',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 30),
                Text(
                  '8/ Donner votre numéro de téléphone',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 30),
                Text(
                  '9/ Demander si vous pouvez raccrocher.',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        _showBottomSheet(context);
      },
      child: Icon(Icons.text_snippet_outlined),
      backgroundColor: white,
    );
  }
}
