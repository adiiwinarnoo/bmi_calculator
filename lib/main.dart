import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        colorScheme: ThemeData().colorScheme.copyWith(secondary: Colors.cyan),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        floatingActionButtonTheme:
            FloatingActionButtonThemeData(backgroundColor: Colors.cyan),
      ),
      home: InputPage(),
    );
  } 
}
