import 'dart:convert';
import 'package:flutter/foundation.dart';
import '../model/post.dart';
import 'package:http/http.dart' as http;

List<Post> parsePosts(String responseBody) {
  var list = json.decode(responseBody) as List<dynamic>;
  List<Post> posts = list.map((model) => Post.fromJson(model)).toList();
  return posts;
}

Future<List<Post>> fetchPosts() async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
  if (response.statusCode == 200) {
    return compute(parsePosts, response.body);
  } else {
    throw Exception('Request API Error');
  }
}
