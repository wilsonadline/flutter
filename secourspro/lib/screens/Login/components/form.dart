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
        const Text("Username"),
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
              labelText: "Username",
              hintText: "Entrer votre nom d'utilisateur",
              border: InputBorder.none
            ),
            onChanged: (value) {},
          ),
        ),
        const SizedBox(
          height: 30,
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
              hintText: "Entrer votre mot de passe",
              border: InputBorder.none
            ),
            onChanged: (value) {},
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Center(
          child: Text(
            "Mot de passe oublié ?",
            style: TextStyle(
              color: Colors.red,
            ),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        ElevatedButton(
          onPressed: () {
            context.go('/login');
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            minimumSize: const Size(200, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          child: const Text(
            'Se connecter',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Vous n'avez pas de compte ? "),
            Container(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () {
                  context.go('/register');
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(80, 30),
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  textStyle: const TextStyle(fontSize: 14),
                ),
                child: const Text('S\'enregister'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}