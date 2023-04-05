// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

void main() => runApp(const app());

class app extends StatelessWidget {
  const app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "shayan app",
      home: Scaffold(
        appBar: AppBar(
          title: Text("data"),
        ),
      ),
    );
  }
}
