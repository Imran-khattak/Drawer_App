import 'package:flutter/material.dart';
import 'package:ui_ux/contact_page.dart';
import 'package:ui_ux/home_page.dart';
import 'package:ui_ux/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: HomePage.id,
      routes: {
        HomePage.id: (context) => const HomePage(),
        ContactPage.id: (context) => const ContactPage(),
        HomeScreen.id: (context) => const HomeScreen(),
      },
      //home: const HomePage(),
    );
  }
}
