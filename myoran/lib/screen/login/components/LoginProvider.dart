import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myoran/screen/home/home.dart';
import 'package:myoran/constraint.dart';
import 'package:myoran/screen/register/register.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class LoginProvider {
  Future<String> getToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    if (token == null) return '';
    return token;
  }

  Future<void> signIn(
      BuildContext context, String email, String password) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    Map body = {'email': email, 'password': password};
    var response = await http.post(Uri.parse(loginUrl),
        headers: <String, String>{'Accept': 'application/json'}, body: body);
    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);
      print('response status:${response.statusCode}');
      print('response status:${response.body}');
      sharedPreferences.setString("token", jsonResponse['access_token']);
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => Home()), (route) => false);
    } else {
      final jsonResponse = json.decode(response.body);
      final err = jsonResponse['error'];
      final email = jsonResponse['email'];
      final password = jsonResponse['password'];
      if (email != null) {
        ShowDiaLog1(context, email[0]);
      } else if (password != null) {
        ShowDiaLog1(context, password[0]);
      } else {
        ShowDiaLog1(context, err);
      }
    }
  }
}

void ShowDiaLog1(BuildContext context, mess) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Text(
            '${mess}',
          ),
        );
      });
}
