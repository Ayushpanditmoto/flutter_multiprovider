// ignore_for_file: file_names

import 'package:flutter/material.dart';

class TextModel extends ChangeNotifier {
  String _text = "Hello World";

  String get text => _text;

  void changed() {
    _text = "Hello Flutter";
    notifyListeners();
  }

  void changed1() {
    _text = "Hello ji";
    notifyListeners();
  }

  void reset() {
    _text = "Hello World";
    notifyListeners();
  }
}
