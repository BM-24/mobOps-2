import 'package:flutter/material.dart';
import 'package:list_app/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lists',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Zoo'),
          centerTitle: true,
        ),
        body: const HomePage(),
      ),
    );
  }
}
