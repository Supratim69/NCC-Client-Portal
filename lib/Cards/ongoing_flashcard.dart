import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PresentFlashCard extends StatelessWidget {
  final String paradeId;
  final DateTime date;
  final int numberOfTokens;
  final String RefType;

  PresentFlashCard({
    required this.paradeId,
    required this.date,
    required this.numberOfTokens,
    required this.RefType,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.all(20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Parade ID: $paradeId',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              'Date: ${DateFormat.yMMMd().format(date)}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              'Refreshment Type: $RefType',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 12),
            Text(
              'Current no. of Tokens: $numberOfTokens',
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
