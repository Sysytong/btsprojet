import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';

class BluetoothConnectPage extends StatefulWidget {
  const BluetoothConnectPage({Key? key}) : super(key: key);

  @override
  _BluetoothConnectPageState createState() => _BluetoothConnectPageState();
}

class _BluetoothConnectPageState extends State<BluetoothConnectPage> {
  final List<ScanResult> scanResults = [];
  final FlutterBlue flutterBlue = FlutterBlue.instance;

  @override
  void initState() {
    super.initState();
    _startScan();
  }

  Future<void> _startScan() async {
    flutterBlue.scanResults.listen((results) {
      // Mise à jour de la liste des résultats de scan
      setState(() {
        scanResults.clear();
        scanResults.addAll(results);
      });
    });

    // Commencer le scan
    await flutterBlue.startScan(timeout: const Duration(seconds: 4));
  }

  @override
  void dispose() {
    // Arrêter le scan lorsque la page est fermée
    flutterBlue.stopScan();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recherche d\'appareils Bluetooth'),
      ),
      body: ListView.builder(
        itemCount: scanResults.length,
        itemBuilder: (context, index) {
          final result = scanResults[index];
          return ListTile(
            title: Text(result.device.name ?? 'Unknown'),
            subtitle: Text(result.device.id.toString()),
            onTap: () {

            },
          );
        },
      ),
    );
  }
}
