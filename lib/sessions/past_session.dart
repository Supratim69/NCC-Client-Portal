import 'package:flutter/material.dart';
import 'package:qr_scanner/Cards/past_flashcard.dart';
import 'package:qr_scanner/data/data.dart';

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
      body: ListView.builder(
          itemCount: PastParade.length,
          itemBuilder: (context, index) {
            return PastFlashCard(
                paradeId: PastParade[index].paradeId,
                date: PastParade[index].date,
                numberOfTokens: PastParade[index].numberOfTokens,
                startTime: PastParade[index].startTime,
                endTime: PastParade[index].endTime,
                refreshmentType: PastParade[index].refreshmentType);
          }),
    );
  }
}
