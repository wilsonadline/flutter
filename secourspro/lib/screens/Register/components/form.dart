import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Nom"),
        const SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              width: 0.5,
              color: Colors.grey,
            ) 
          ),
          child: TextField(
            decoration: const InputDecoration(
              labelText: "Nom",
              hintText: "Entrer votre nom",
              border: InputBorder.none
            ),
            onChanged: (value) {},
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text("Prénom"),
        const SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              width: 0.5,
              color: Colors.grey,
            ) 
          ),
          child: TextField(
            decoration: const InputDecoration(
              labelText: "Prénom",
              hintText: "Entrer votre Prénom",
              border: InputBorder.none
            ),
            onChanged: (value) {},
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text("E-mail"),
        const SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              width: 0.5,
              color: Colors.grey,
            ) 
          ),
          child: TextField(
            decoration: const InputDecoration(
              labelText: "Email",
              hintText: "Entrer votre adresse e-mail",
              border: InputBorder.none
            ),
            onChanged: (value) {},
          ),
        ),
        const Text("Adresse"),
        const SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              width: 0.5,
              color: Colors.grey,
            ) 
          ),
          child: TextField(
            decoration: const InputDecoration(
              labelText: "Adresse",
              hintText: "Entrer Adresse postale",
              border: InputBorder.none
            ),
            onChanged: (value) {},
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text("Téléphone"),
        const SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              width: 0.5,
              color: Colors.grey,
            ) 
          ),
          child: TextField(
            decoration: const InputDecoration(
              labelText: "Téléphone",
              hintText: "Entrer votre numéro de téléphone",
              border: InputBorder.none
            ),
            onChanged: (value) {},
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text("Password"),
        const SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              width: 0.5,
              color: Colors.grey,
            ) 
          ),
          child: TextField(
            decoration: const InputDecoration(
              labelText: "Password",
              hintText: "Entrer un nouveau mot de passe",
              border: InputBorder.none
            ),
            onChanged: (value) {},
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {
            context.go('/register');
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            minimumSize: const Size(200, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          child: const Text(
            'S\'enregistrer',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Row(
          children: [
            const Text("Vous avez déjà un compte ? "),
            const Spacer(),
            Container(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () {
                  context.go('/login');
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(80, 30),
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  textStyle: const TextStyle(fontSize: 14),
                ),
                child: const Text('Se connecter'),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}