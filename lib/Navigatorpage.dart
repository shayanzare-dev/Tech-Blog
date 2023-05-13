import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tech_blog/Colors.dart';
import 'package:tech_blog/gen/assets.gen.dart';
import 'secend_naigatorPage.dart';

void main() => runApp(const MaterialApp(home: NavigatorPage()));

class NavigatorPage extends StatefulWidget {
  const NavigatorPage({super.key});

  @override
  State<NavigatorPage> createState() => _NavigatorPageState();
}

class _NavigatorPageState extends State<NavigatorPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController InstagremIdController = TextEditingController();
    bool _validate = false;
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: InstagremIdController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(CupertinoIcons.smiley),
                    prefixIconColor: SolidColors.primaryColor,
                    labelText: "نام",
                    labelStyle:
                        const TextStyle(color: SolidColors.primaryColor),
                    hintText: "نام خود را وارد کنید",
                    helperStyle: const TextStyle(
                      color: SolidColors.primaryColor,
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 54, 227, 2))),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => SecendNaigatorPage(
                                  instagramId: InstagremIdController.text,
                                )));
                  },
                  child: const Text("صفحه بعد"))
            ],
          ),
        ),
      ),
    );
  }
}
