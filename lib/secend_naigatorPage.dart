// ignore_for_file: unused_import, unnecessary_import, prefer_typing_uninitialized_variables, must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tech_blog/gen/assets.gen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'Colors.dart';

class SecendNaigatorPage extends StatelessWidget {
  var instagramId;
  SecendNaigatorPage({super.key, required this.instagramId});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 88, 15, 100),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(instagramId),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("بازگشت"))
            ],
          ),
        ),
      ),
    );
  }
}
