// import 'dart:developer';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:qr_code_scanner/qr_code_scanner.dart';

// import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
// import '../main.dart';

// // void main() => runApp(const MaterialApp(home: QRScanPage()));

// class QRScanPage extends StatefulWidget{
//  const QRScanPage({Key? key}) : super(key: key);
//   @override
//   _QRScanPageState createState() => _QRScanPageState();
// }

// class _QRScanPageState extends State<QRScanPage> {
//    String qrCode = 'Unknown';

//   @override
//   Widget build(BuildContext context) => Scaffold(
//         appBar: AppBar(
          
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Text(
//                 'Scan Result',
//                 style: TextStyle(
//                   fontSize: 16,
//                   color: Colors.white54,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(height: 8),
//               Text(
//                 '$qrCode',
//                 style: TextStyle(
//                   fontSize: 28,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white,
//                 ),
//               ),
//               SizedBox(height: 72),
//               Container(
//                       height: 40,
//                       width: 200,
//                       padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
//                       child: ElevatedButton(
//                         style: ButtonStyle(
//                             shape:
//                                 MaterialStateProperty.all<RoundedRectangleBorder>(
//                                     RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(30.0),
//                         ))),
//                         onPressed: () {
//                          scanQRCode();
//                         },
//                         child: Text('Start QR scan'),
//                       ),
//                     ),
//             ],
//           ),
//         ),
//       );

      

// Future<void> scanQRCode() async {
//     try {
//       final qrCode = await FlutterBarcodeScanner.scanBarcode(
//         '#ff6666',
//         'Cancel',
//         true,
//         ScanMode.QR,
//       );

//       if (!mounted) return;

//       setState(() {
//         this.qrCode = qrCode;
//       });
//     } on PlatformException {
//       qrCode = 'Failed to get platform version.';
//     }
//   }
// }

// // class _QRScanPageState extends State<QRScanPage>{
// //   if(Platform.isAndriod){
// //     await controller!.pauseCamera();
// //   }
// //   controller!.resumeCamera();

// //   @override
// //   Widget build(BuildContext context) => SafeArea(child: Scaffold(body: Stack(alignment: Alignment.center,
// //   children: <Widget>[

// //   ],
// //   ),
// //   ),
// //   );
// // }