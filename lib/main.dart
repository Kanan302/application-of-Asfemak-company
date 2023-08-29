import 'package:flutter/material.dart';
import 'homepage.dart';

void main() {
  runApp(AsfemakApp());
}

class AsfemakApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Asfemak',
      home: HomePage(),
    );
  }
}