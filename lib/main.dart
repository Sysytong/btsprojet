import 'package:btsprojet/pages/BluetoothConnectPage.dart';
import 'package:btsprojet/pages/EventPage.dart';
import 'package:btsprojet/pages/HomePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  void setCurrentIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text([
            "Ma ruche",
            "Mes Données",
            "Connexion Bluetooth",
          ][_currentIndex]),
        ),
        body: IndexedStack(
          index: _currentIndex,
          children: [
            HomePage(),
            EventPage(),
            BluetoothConnectPage(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: setCurrentIndex,
          selectedItemColor: Colors.amber,
          unselectedItemColor: Colors.grey,
          iconSize: 40,
          elevation: 20,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Accueil',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.addchart),
              label: 'Informations',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bluetooth),
              label: 'Bluetooth',
            ),
          ],
        ),
      ),
    );
  }
}
