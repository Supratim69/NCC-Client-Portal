import 'dart:io';

import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:qr_scanner/alerts/qr_alert.dart';
import 'package:qr_scanner/alerts/qr_snackbar.dart';
import 'package:qr_scanner/data/data.dart';

class QRScannerWidget extends StatefulWidget {
  const QRScannerWidget({super.key});

  @override
  State<QRScannerWidget> createState() => _QRScannerWidgetState();
}

class _QRScannerWidgetState extends State<QRScannerWidget> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? controller;
  Barcode? result;
  String? scannedString;

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  void reassemble() async {
    super.reassemble();

    if (Platform.isAndroid) {
      await controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() => this.controller = controller);
    controller.scannedDataStream.listen((scanData) {
      // setState(() {
      //   result = scanData;
      // });
      result = scanData;
      check();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Scan QR"),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            QRView(
              key: qrKey,
              onQRViewCreated: _onQRViewCreated,
              overlay: QrScannerOverlayShape(),
            ),
          ],
        ));
  }

  void check() {
    if (result != null) {
      scannedString = result!.code;
      bool isMatch = false;
      for (String data in Fdata) {
        if (scannedString == data) {
          isMatch = true;
          break;
        }
      }
      controller?.pauseCamera();
      buildResult(isMatch);
      controller?.resumeCamera();
    }
  }

  Widget buildResult(bool isMatch) => Container(
        //This one is for snackbar
        child: (isMatch
            ? showSuccessSnackbar(context)
            : showInvalidTokenSnackbar(context)),
        //The below one is for Dialog Box
        // child: (isMatch
        //     ? correctVerificationModal(context)
        //     : wrongVerificationModal(context)),
      );
}
