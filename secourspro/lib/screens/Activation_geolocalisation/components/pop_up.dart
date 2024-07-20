import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class PopUp extends StatelessWidget {
  const PopUp({super.key});

  Future<void> _getCurrentLocation(BuildContext context) async {
    bool serviceEnabled;
    LocationPermission permission;

    // Tester si la localisation est activé :.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Les services de localisation sont désactivés.')),
      );
      return;
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('La permission de localisation est refusée.')),
        );
        return;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('La permission de localisation est refusée de façon permanente.')),
      );
      return;
    }

    // Une fois l'activation accepté :
    Position position = await Geolocator.getCurrentPosition();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Localisation actuelle: ${position.latitude}, ${position.longitude}')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text('Activer la localisation'),
      onPressed: () {
        showModalBottomSheet<void>(
          context: context,
          builder: (BuildContext context) {
            return SizedBox.expand(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const Text(
                      'Veuillez aller dans Réglages > Secours Pro > Localisation > Toujours active. Sinon cliquer sur Activer.\nNotre politique de confidentialité',
                      textAlign: TextAlign.center,
                    ),
                    ElevatedButton(
                      child: const Text('Activer'),
                      onPressed: () async => {
                        await _getCurrentLocation(context),
                        Navigator.pop(context),
                      } 
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
