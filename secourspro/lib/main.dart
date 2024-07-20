import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:secourspro/components/config_page.dart';
import 'package:secourspro/screens/FicheIncident/ficheincident.dart';
import 'package:secourspro/screens/FinIncident/finincident.dart';
import 'package:secourspro/screens/Home/home.dart';
import 'package:secourspro/screens/Activation_geolocalisation/Active_loc.dart';
import 'package:secourspro/screens/Login/login_page.dart';
import 'package:secourspro/screens/Presentation/page_1.dart';
import 'package:secourspro/screens/Presentation/page_2.dart';
import 'package:secourspro/screens/Incidents/incidents.dart';
import 'package:secourspro/screens/ProcedureReconfort/procedurereconfort.dart';
import 'package:secourspro/screens/Register/register_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SecoursProPage(),
      ),
      GoRoute(
        path: '/Page_2',
        builder: (context, state) => const SecoursProPage2(),
      ),
      GoRoute(
        path: '/active_loc',
        builder: (context, state) => const ActiveLoc(),
      ),
      GoRoute(
        path: '/config_page',
        builder: (context, state) => const ConfigPage(),
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: '/register',
        builder: (context, state) => const RegisterPage(),
      ),
      GoRoute(
        path: '/incidents',
        builder: (context, state) => const IncidentsPage(),
      ),
      GoRoute(
        path: '/incident/:id',
        builder: (context, state) => FicheIncident(id: state.pathParameters['id']),
      ), 
      GoRoute(
        path: '/finincident',
        builder: (context, state) => const FinIncident(),
      ), 
      GoRoute(
        path: '/procedurereconfort',
        builder: (context, state) => const ProcedureReconfort(),
      ),           
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
      title: 'SecoursPro',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
