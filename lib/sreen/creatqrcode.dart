import 'package:flutter/material.dart';

import 'package:qr_flutter/qr_flutter.dart';

class CreatQRCode extends StatelessWidget {
  const CreatQRCode({super.key, required this.controller});
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Creat QR Code"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              QrImageView(data: controller.text),
              SizedBox(height: 20.0),
              Text("Scan the QR code above"),
            ],
          ),
        ));
  }
}
