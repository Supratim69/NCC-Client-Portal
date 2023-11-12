import 'package:flutter/material.dart';
import 'package:qr_scanner/Cards/future_flashcard.dart';
import 'package:qr_scanner/data/data.dart';

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
      body: ListView.builder(
          itemCount: FutureParade.length,
          itemBuilder: (context, index) {
            return FutureFlashCard(
                paradeId: FutureParade[index].paradeId,
                date: FutureParade[index].date,
                startTime: FutureParade[index].startTime,
                endTime: FutureParade[index].endTime,
                refreshmentType: FutureParade[index].refreshmentType);
          }),
    );
  }
}
