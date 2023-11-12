import 'package:flutter/material.dart';

class PastSession extends StatefulWidget {
  const PastSession({super.key});

  @override
  State<PastSession> createState() => _PastSessionState();
}

class _PastSessionState extends State<PastSession> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Past Parades"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: const Center(
        child: Text("Welcome to Past Parades Page"),
      ),
    );
  }
}
