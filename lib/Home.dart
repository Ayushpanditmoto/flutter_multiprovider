// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:provide/constants.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 88, 219),
      appBar: AppBar(
        title: const Text('Provider'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  HomeButton("Second", () {
                    Navigator.pushNamed(context, secondRoute,
                        arguments: "Hello");
                  }),
                  HomeButton("Third", () {
                    Navigator.pushNamed(context, thirdRoute);
                  }),
                  HomeButton("hello", () {
                    debugPrint("hello");
                  }),
                  HomeButton("hello", () {
                    debugPrint("hello");
                  }),
                  HomeButton("hello", () {
                    debugPrint("hello");
                  }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  HomeButton(String t, fun) => Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: ElevatedButton(
          onPressed: fun,
          style: ButtonStyle(
            padding: MaterialStateProperty.all(
              const EdgeInsets.symmetric(vertical: 20, horizontal: 180),
            ),
            backgroundColor: MaterialStateProperty.all(Colors.grey),
          ),
          child: Text(
              t), // We wrap each button in a function to easily change its style later
        ),
      );
}
