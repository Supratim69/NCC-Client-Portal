import 'package:flutter/material.dart';

showSuccessSnackbar(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      content: Text('Success: Token verified!!'),
      backgroundColor: Colors.green,
      duration: Duration(seconds: 2),
    ),
  );
}

showInvalidTokenSnackbar(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      content: Text('Invalid Token!!'),
      backgroundColor: Colors.red,
      duration: Duration(seconds: 2),
    ),
  );
}
