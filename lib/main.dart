import 'package:example1/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Uygulamam());
}

class Uygulamam extends StatefulWidget {
  const Uygulamam({super.key});

  @override
  State<Uygulamam> createState() => _UygulamamState();
}

class _UygulamamState extends State<Uygulamam> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}
