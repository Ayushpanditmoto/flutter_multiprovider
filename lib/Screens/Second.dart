// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  final String data;
  const Second(this.data, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('2nd'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Second page $data'),
      ),
    );
  }
}
