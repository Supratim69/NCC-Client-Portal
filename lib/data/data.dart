import 'package:flutter/material.dart';

List Fdata = ["supratim", "shreya", "aditya", "atharv"];

class ParadeObject {
  String paradeId;
  DateTime date;
  TimeOfDay startTime;
  TimeOfDay endTime;
  int numberOfTokens;
  String refreshmentType;

  ParadeObject({
    required this.paradeId,
    required this.date,
    required this.startTime,
    required this.endTime,
    required this.numberOfTokens,
    required this.refreshmentType,
  });
}

ParadeObject CurrentParade = ParadeObject(
    paradeId: "Parade 5",
    date: DateTime.now(),
    startTime: const TimeOfDay(hour: 9, minute: 0),
    endTime: const TimeOfDay(hour: 12, minute: 0),
    numberOfTokens: 0,
    refreshmentType: "Breakfast");

List<ParadeObject> PastParade = [
  ParadeObject(
    paradeId: 'Parade 1',
    date: DateTime.now().subtract(const Duration(days: 5)),
    startTime: const TimeOfDay(hour: 9, minute: 0),
    endTime: const TimeOfDay(hour: 12, minute: 0),
    numberOfTokens: 30,
    refreshmentType: 'Snacks',
  ),
  ParadeObject(
    paradeId: 'Parade 2',
    date: DateTime.now().subtract(const Duration(days: 10)),
    startTime: const TimeOfDay(hour: 10, minute: 0),
    endTime: const TimeOfDay(hour: 13, minute: 0),
    numberOfTokens: 45,
    refreshmentType: 'Beverages',
  ),
  ParadeObject(
    paradeId: 'Parade 3',
    date: DateTime.now().subtract(const Duration(days: 15)),
    startTime: const TimeOfDay(hour: 11, minute: 0),
    endTime: const TimeOfDay(hour: 14, minute: 0),
    numberOfTokens: 60,
    refreshmentType: 'Lunch',
  ),
  ParadeObject(
    paradeId: 'Parade 4',
    date: DateTime.now().subtract(const Duration(days: 20)),
    startTime: const TimeOfDay(hour: 12, minute: 0),
    endTime: const TimeOfDay(hour: 15, minute: 0),
    numberOfTokens: 45,
    refreshmentType: 'Breakfast',
  )
];

List<ParadeObject> FutureParade = [
  ParadeObject(
    paradeId: 'Parade 6',
    date: DateTime.now().add(const Duration(days: 5)),
    startTime: const TimeOfDay(hour: 9, minute: 0),
    endTime: const TimeOfDay(hour: 12, minute: 0),
    numberOfTokens: 0,
    refreshmentType: 'Snacks',
  ),
  ParadeObject(
    paradeId: 'Parade 7',
    date: DateTime.now().add(const Duration(days: 10)),
    startTime: const TimeOfDay(hour: 10, minute: 0),
    endTime: const TimeOfDay(hour: 13, minute: 0),
    numberOfTokens: 0,
    refreshmentType: 'Lunch',
  ),
];
