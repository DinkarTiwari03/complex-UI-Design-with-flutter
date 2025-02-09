// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:pages/page/main_page.dart';

import 'page/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
       home: MainPage(),
      // home: LoginPage(),
    );
  }
}
