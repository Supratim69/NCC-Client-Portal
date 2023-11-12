import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FutureFlashCard extends StatelessWidget {
  final String paradeId;
  final DateTime date;
  final TimeOfDay startTime;
  final TimeOfDay endTime;
  final String refreshmentType;

  FutureFlashCard({
    required this.paradeId,
    required this.date,
    required this.startTime,
    required this.endTime,
    required this.refreshmentType,
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
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              'Date: ${DateFormat.yMMMd().format(date)}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 12),
            Text(
              'Start Time: ${startTime.format(context)}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 12),
            Text(
              'End Time: ${endTime.format(context)}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 12),
            Text(
              'Refreshment Type: $refreshmentType',
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
