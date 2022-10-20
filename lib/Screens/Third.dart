// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Third extends StatelessWidget {
  const Third({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('2nd'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text("Third Screen"),
      ),
    );
  }
}
