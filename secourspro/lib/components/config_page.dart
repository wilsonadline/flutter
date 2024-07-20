
import 'dart:developer';

import "package:flutter/material.dart";
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:secourspro/screens/Home/home.dart';
import 'package:secourspro/screens/Incidents/incidents.dart';
import 'package:secourspro/screens/Login/login_page.dart';

class ConfigPage extends StatefulWidget {
  const ConfigPage({super.key});

  @override
  State<ConfigPage> createState() => _ConfigPageState();
}

class _ConfigPageState extends State<ConfigPage> {
  int _pageIndex = 0;

  var _pages = [
    const HomePage(),
    const LoginPage(),
    const IncidentsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: 
        _pages[_pageIndex],
      ),
      extendBody: true,
      bottomNavigationBar: CurvedNavigationBar(
        
        // Liste des Icones : 
        items: const [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.home),
              Text('Home', style: TextStyle(fontSize: 12)),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.person),
              Text('Login', style: TextStyle(fontSize: 12)),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.medical_services),
              Text('Incidents', style: TextStyle(fontSize: 12)),
            ],
          ),
        ],

        // Paramètres d'affichages et animations de la barre de navigation :
        backgroundColor: const Color.fromARGB(255, 245, 79, 67),
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 300),

        onTap: (index) {
          log('index $index');
          setState(() {
            _pageIndex = index;
          });
        },
      )
    );
  }
}