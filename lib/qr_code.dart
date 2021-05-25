import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

double qrSize = 100.0;
String qrData = "0110111";

class ScanCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return QrImage(
      version: QrVersions.auto,
      data: qrData,
      size: qrSize,
    );
  }
}
