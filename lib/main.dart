import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screens/Homescreen.dart';

void main() {
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
      home: HomescreenPage(),
    );
  }
}
