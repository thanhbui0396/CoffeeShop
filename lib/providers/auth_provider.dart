import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/data_regis.dart';

class AuthProvider extends ChangeNotifier {
  final Dio _dio = Dio();

  final _baseUrl = 'https://api.goodapp.vn';
  String _token = '';

  bool get isAuth {
    return _token.isNotEmpty;
  }

  Future<void> register(DataRegis dataRegis) async {
    try {
      Response response = await _dio.post(
        '$_baseUrl/signup',
        data: dataRegis.toJson(),
      );
      print('Đăng ký thành công!');
    } catch (e) {
      print('Error creating user: $e');
    }
  }

  Future<void> _authentication(String username, String password) async {
    dynamic basicAuth =
        'Basic ${base64.encode(utf8.encode('$username:$password'))}';

    try {
      final response = await _dio.get(
        '$_baseUrl/auth/local',
        options: Options(
          headers: {
            'Authorization': basicAuth,
          },
        ),
      );
      _token = response.data['token'].toString();
      notifyListeners();
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      final userData = jsonEncode({'token': _token});
      await prefs.setString('userData', userData);
    } catch (e) {
      print(e);
    }
  }

  void login(String username, String password) {
    _authentication(username, password);
  }

  Future<void> logout() async {
    _token = '';
    notifyListeners();
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove('userData');
  }
}
