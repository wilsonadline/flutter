import 'package:flutter/material.dart';
import 'package:secourspro/components/bloc_content.dart';

class Gestes extends StatelessWidget {
  const Gestes({super.key});

  @override
  Widget build(BuildContext context) {
    return const ContentBloc(
      content: Column(children: [
        Text('Étapes',
            style: TextStyle(fontSize: 18), textAlign: TextAlign.left),
        SizedBox(height: 10),
        Text(
            '1/ Placer la victime au repos en position : allongée confortablement (lit ou canapé), ou à défaut sur le sol; assise en cas de difficultés respiratoires ; dans la position où la victime se sent le mieux.',
            style: TextStyle(fontSize: 14)),
        SizedBox(height: 10),
        Text(
            '2/ Desserrer les vêtements en cas de gêne (cravate, ceinture, …).',
            style: TextStyle(fontSize: 14)),
        SizedBox(height: 10),
        Text('3/ Rassurer la victime en lui parlant régulièrement.',
            style: TextStyle(fontSize: 14)),
        SizedBox(height: 10),
        Text('4/ Protéger contre la chaleur, le froid ou les intempéries.',
            style: TextStyle(fontSize: 14)),
        SizedBox(height: 10),
        Text(
            '5/ Se renseigner auprès de la victime ou de son entourage sur : son âge ; la durée du malaise ; son état de santé actuel (maladies, hospitalisations ou traumatismes récents) ; les traitements médicamenteux suivis ; la survenue d’un malaise identique par le passé.',
            style: TextStyle(fontSize: 14)),
        SizedBox(height: 10),
        Text(
            '6/ À sa demande, lui donner : son traitement habituel pour ce type de malaise ; du sucre en morceaux…',
            style: TextStyle(fontSize: 14)),
        SizedBox(height: 10),
        Text(
            '7/ Demander un avis médical au SAMU en composant le 15 et transmettre les informations recueillies (souvent le médecin régulateur demande à parler directement à la victime) puis appliquer les consignes. Ou appeler les secours en composant le 18 ou le 112.',
            style: TextStyle(fontSize: 14)),
        SizedBox(height: 10),
        Text(
            '8/ En cas d’aggravation en attendant les secours : contacter à nouveau les services de secours pour signaler l’aggravation ; pratiquer les gestes qui s’imposent, si elle a perdu connaissance.',
            style: TextStyle(fontSize: 14)),
        SizedBox(height: 10),
        Text('9/ Surveiller la victime jusqu’à l’arrivée des secours.',
            style: TextStyle(fontSize: 14)),
      ]),
    );
  }
}
