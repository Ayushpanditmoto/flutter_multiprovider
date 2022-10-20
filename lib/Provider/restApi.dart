// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:dio/dio.dart';

class RestApi with ChangeNotifier {
  Dio dio = Dio();

  Future get(String url) async {
    try {
      Response response = await dio.get(url);
      debugPrint(response.data.toString());
      return response.data;
    } catch (e) {
      debugPrint("Error: $e");
    }
  }

  // void post(String url, Map<String, dynamic> data) {
  //   dio.post(url, data: data).then((value) {
  //     debugPrint(value.data);
  //   });
  // }

  // void put(String url, Map<String, dynamic> data) {
  //   dio.put(url, data: data).then((value) {
  //     debugPrint(value.data);
  //   });
  // }

  // void delete(String url) {
  //   dio.delete(url).then((value) {
  //     debugPrint(value.data);
  //   });
  // }
}
