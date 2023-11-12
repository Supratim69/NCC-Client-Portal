import 'package:flutter/material.dart';
import 'package:qr_scanner/scanner.dart';

class CurrentSession extends StatefulWidget {
  const CurrentSession({super.key});

  @override
  State<CurrentSession> createState() => _CurrentSessionState();
}

class _CurrentSessionState extends State<CurrentSession> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ongoing Parade'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => QRScannerWidget()),
            );
          },
          child: const Text("Scan QR"),
        ),
      ),
    );
  }
}
