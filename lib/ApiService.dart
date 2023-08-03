import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:training_class_1/AppResponse.dart';
import 'package:training_class_1/url.dart';

class ApiService {
  static var client = http.Client();

  static Future<AppResponse?> login(String username, String password) async {

    var map = new Map<String, dynamic>();
    map['username'] = username;
    map['password'] = password;

    var response = await client.post(
      Uri.parse(URL.login),
      body: jsonEncode(<String, String>{
        'username': username,
        'password': password,
      }),
    );

    print("Api Response : ${response.body}");
    if (response.statusCode == 200)
    {
      print("Api Response : ${response.body}");
      var jsonString = response.body;
      return AppResponse.fromJson(json.decode(jsonString));
    } else {
      return null;
    }
  }
}
