import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Map<String, String> headers = {};

Future loginUser(String email,String password) async {
  String login_url ='https://iot-server-365.herokuapp.com/login';
  final response = await http.post(login_url,
    headers: {"Accept":"Application/json"},
    body: {'email' : email , 'pass' : password},
  );
  updateCookie(response);
  print(response);
  // var convertedDatatoJson = jsonDecode(response.body);
  // return convertedDatatoJson;
}

void updateCookie(http.Response response) {
  String rawCookie = response.headers['set-cookie'];
  if (rawCookie != null) {
    int index = rawCookie.indexOf(';');
    headers['cookie'] =
        (index == -1) ? rawCookie : rawCookie.substring(0, index);
  }
}