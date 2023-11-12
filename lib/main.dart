import 'package:flutter/material.dart';
import 'package:qr_scanner/sessions/current_session.dart';
import 'package:qr_scanner/sessions/future_session.dart';
import 'package:qr_scanner/sessions/past_session.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("NCC Parades"),
      ),
      body: SessionOptions(),
    );
  }
}

class SessionOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SessionButton(
            label: 'Past Parades',
            color: Colors.grey,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PastSession()),
              );
              // correctVerificationModal(context);
            }),
        SessionButton(
            label: 'Ongoing Parade',
            color: Colors.blue,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CurrentSession()),
              );
            }),
        SessionButton(
            label: 'Future Parades',
            color: Colors.green,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FutureSession()),
              );
            }),
      ],
    );
  }
}

class SessionButton extends StatelessWidget {
  final String label;
  final Color color;
  final VoidCallback onPressed;

  const SessionButton({
    Key? key,
    required this.label,
    required this.color,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 60.0),
          primary: color,
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
        ),
        child: SizedBox(
          width: double.infinity,
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 18.0),
          ),
        ),
      ),
    );
  }
}
