import 'package:flutter/material.dart';
import 'package:qrcode/sreen/creatqrcode.dart';
import 'package:qrcode/sreen/scannerarcode.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomePage"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              child: TextFormField(
                controller: controller,
                decoration: const InputDecoration(
                    labelText: "Enter URL", border: OutlineInputBorder()),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => CreatQRCode(
                      controller: controller,
                    ),
                  ));
                },
                child: const Text("Creat QR Code")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ScannerQr(),
                  ));
                },
                child: const Text("Read QR Code"))
          ],
        ),
      ),
    );
  }
}
