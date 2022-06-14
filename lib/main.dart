import 'package:flutter/material.dart';
import 'dart:math';
import 'ex0.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: OmikuziPage(),
    );
  }
}

