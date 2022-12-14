import 'package:flutter/material.dart';
import 'package:parentapp_design/src/features/screens/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gotoz parent design',
      home: LoginPage(),
    );
  }
}
