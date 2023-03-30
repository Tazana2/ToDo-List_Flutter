import 'package:flutter/material.dart';
import 'screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        brightness: Brightness.dark,
        appBarTheme: const AppBarTheme(
            backgroundColor: Colors.yellow,
            titleTextStyle: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
            iconTheme: IconThemeData(
              color: Colors.black,
              size: 25,
            )),
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
