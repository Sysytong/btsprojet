import 'package:flutter/material.dart';

class EventPage extends StatefulWidget {
  const EventPage({Key? key}) : super(key: key);

  @override
  _EventPageState createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
    double temperature = 0.0;
  double poids = 0.0;
  double humidite = 0.0;

  // Fonction pour mettre à jour les données avec les valeurs Bluetooth reçues
  void updateData(double newTemperature, double newPoids, double newHumidite) {
    setState(() {
      temperature = newTemperature;
      poids = newPoids;
      humidite = newHumidite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: [
          Card(
            child: ListTile(
              leading: Image.asset("assets/images/poids.png"),
              title: Text('Masse de la ruche: $poids'),
              trailing: Icon(Icons.more_vert),
            ),
          ),
          Card(
            child: ListTile(
              leading: Image.asset("assets/images/humidité.png"),
              title: Text("Afficher l'humidité: $humidite"),
              trailing: Icon(Icons.more_vert),
            ),
          ),
          Card(
            child: ListTile(
              leading: Image.asset("assets/images/température.png"),
              title: Text('Température dans la ruche: $temperature'),
              trailing: Icon(Icons.more_vert),
            ),
          ),
        ],
      ),
    );
  }
}
