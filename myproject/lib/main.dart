import 'package:flutter/material.dart';
import 'package:myproject/Screen/Singup.dart';
import 'package:myproject/Screen/change.dart';
import 'package:myproject/Screen/home.dart';
import 'package:myproject/Screen/home2.dart';
import 'package:myproject/Screen/home3.dart';
import 'package:myproject/Screen/home4.dart';
import 'package:myproject/Screen/login.dart';
import 'package:myproject/Screen/page.dart';
import 'package:myproject/Screen/page1.dart';
import 'package:myproject/Screen/page2.dart';
import 'package:myproject/Screen/singup2.dart';
import 'package:myproject/Screen/singup3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 19, 119, 201),
      ),
      home:HomeScreen(),
      routes: {
        '/home2': (context) => Home2Screen(),
        '/home3': (context) => Home3Screen(),
        '/home4': (context) => Home4Screen(),
        '/singup': (context) => SingupScreen(),
        '/singup2': (context) => Singup2Screen(),
        '/singup3': (context) => Singup3Screen(),
        '/change': (context) => ChangeScreen(),
        '/login': (context) => LoginScreen(),
        '/page': (context) => PageScreen(),
        '/page1': (context) => Page1Screen(),
        '/page2': (context) => Page2Screen(),



      },
    );
  }
}