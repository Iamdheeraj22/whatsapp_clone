import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screens/Homescreen.dart';
import 'package:whatsapp_clone/Screens/CameraScreen.dart';
import 'package:whatsapp_clone/Screens/LandingPage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  list = await availableCameras();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.blueAccent,
          colorScheme: ColorScheme.fromSwatch()
              .copyWith(secondary: Colors.blueAccent[500])),
      debugShowCheckedModeBanner: false,
      home: LandingPage(),
    );
  }
}
