import 'package:flutter/material.dart';

class FutureSession extends StatefulWidget {
  const FutureSession({super.key});

  @override
  State<FutureSession> createState() => _FutureSessionState();
}

class _FutureSessionState extends State<FutureSession> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Future Parades"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: const Center(
        child: Text("Welcome to Future Parades Page"),
      ),
    );
  }
}
