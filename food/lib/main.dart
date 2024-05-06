import 'package:flutter/material.dart';
import 'package:food/screens/home_screen.dart';
// import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // VARIABLES; You can store different types of info into variables
  final String name = "NDCDat";
  final int age = 23;
  final double pi = 3.14544;
  final bool isBeginner = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => HomeScreen(),
        },
        theme: ThemeData(
            scaffoldBackgroundColor: Colors.black,
            appBarTheme: const AppBarTheme(color: Colors.black),
            brightness: Brightness.dark
          )
        );
  }
}
