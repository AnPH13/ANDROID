import 'dart:convert';

import 'package:myoran/model/product.dart';
import 'package:myoran/constraint.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeProvider {
  
  static Future<void> getProduct(BuildContext context) async {
    var token = getToken();
    print(token);
    final response = await http
        .get(Uri.parse(productUrl), headers: {'Accept': 'application/json', 'Authorization': 'Bearer '});
    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);
      print('response status:${response.statusCode}');
      print('response status:${response.body}');
    } 
  }
  geta() async{
    var token = getToken();
    print(token);
  }
}