import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qrcode/qr_scan_page.dart';
import 'package:qrcode/qr_create_page.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TheGorgeousLogin',
      home: QRScanPage(),
    );
  }
}