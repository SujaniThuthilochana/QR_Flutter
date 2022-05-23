import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

// void main() {
//       runApp(
//         MaterialApp(
//           home: QRCreatePage(),
//         ),
//       );
//     }

class QRCreatePage extends StatefulWidget{
 const QRCreatePage({Key? key}) : super(key: key);
  @override
  _QRCreatePageState createState() => _QRCreatePageState();
}

class _QRCreatePageState extends State<QRCreatePage>{
  final controller = TextEditingController();
  @override
  Widget build (BuildContext context) => Scaffold(
    appBar: AppBar(title: Text('QR Code generator'),
    ),
    body: Center(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            QrImage(
              data: controller.text,
              size: 200,
              backgroundColor: Colors.white,
            ),
          SizedBox(height: 40),
          buildTextField(context),
        ],
        ),
    ),
    ),
  );

  Widget buildTextField(BuildContext context) => TextField(
    controller: controller,
    style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 20,
    ),
    decoration: InputDecoration(
      hintText: 'Enter the data',
      hintStyle: TextStyle(color: Colors.grey),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: Theme.of(context).accentColor,
        ),
      ),
      suffixIcon: IconButton(
        color: Theme.of(context).accentColor,
        icon: Icon(Icons.done, size: 30),
        onPressed: ()=> setState(() {
          
        }),
      ),
    ),

  );
}

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
       
//       ),
     
//     );
//   }
// }





