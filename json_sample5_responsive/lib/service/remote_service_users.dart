import 'dart:convert';
import 'package:flutter/foundation.dart';
import '../model/user.dart';
import 'package:http/http.dart' as http;

List<Users> parseUsers(String responseBody) {
  var list = json.decode(responseBody) as List<dynamic>;
  List<Users> users = list.map((model) => Users.fromJson(model)).toList();
  return users;
}

Future<List<Users>> fetchUsers() async {
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
  if (response.statusCode == 200) {
    return compute(parseUsers, response.body);
  } else {
    throw Exception('Request API Error');
  }
}

