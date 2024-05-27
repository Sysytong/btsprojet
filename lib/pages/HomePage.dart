import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/ruche.png"),
          const Text(
            "Ma ruche",
            style: TextStyle(
              fontSize: 45,
              fontFamily: 'Poppins',
            ),
          ),
          const Text(
            "Voici la page d'accueil de la ruche",
            style: TextStyle(
              fontSize: 33,
              fontFamily: 'Poppins',
            ),
            textAlign: TextAlign.center,
          ),
          const Padding(padding: EdgeInsets.only(top: 25)),
          ElevatedButton(
            style: ButtonStyle(
              padding: MaterialStateProperty.all(const EdgeInsets.all(15)),
              backgroundColor: MaterialStateProperty.all(Colors.amber),
            ),
            onPressed: () {
              // Naviguer vers la page d'événement
            },
            child: const Text(
              "Afficher la température et l'humidité",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
