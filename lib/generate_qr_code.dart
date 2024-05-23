import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart'; // Correct import for QrImage

class GenerateQRCode extends StatefulWidget {
  const GenerateQRCode({super.key});

  @override
  State<GenerateQRCode> createState() => _GenerateQRCodeState();
}

class _GenerateQRCodeState extends State<GenerateQRCode> {
  TextEditingController urlController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Generate QR Code')), // Added const
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (urlController.text.isNotEmpty)
              QrImageView(
                data: urlController.text,
                size: 200,
              ),
            const SizedBox(height: 10), // Added const
            Container(
              padding: const EdgeInsets.only(left: 18, right: 18), // Added const
              child: TextField(
                controller: urlController,
                decoration: InputDecoration(
                  hintText: 'Enter your data',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  labelText: 'Enter your data',
                ),
              ),
            ),
            const SizedBox(height: 10), // Added const
            ElevatedButton(
              onPressed: () {
                setState(() {}); // Trigger a rebuild to show the QR code
              },
              child: const Text('Generate QR Code'), // Added const
            ),
          ],
        ),
      ),
    );
  }
}
