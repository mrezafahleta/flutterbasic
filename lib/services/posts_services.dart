import 'dart:convert';

import 'package:belajarflutter/models/post.dart';

import 'package:http/http.dart' as http;

class PostService {
  String baseUrl = "https://jsonplaceholder.typicode.com/posts";

  Future<List<PostModel>> fetchPost() async {
    var headers = {'Content-Type': 'application/json'};

    var response = await http.get(Uri.parse(baseUrl), headers: headers);
    // print(response.body);
    if (response.statusCode == 200) {
      List data = jsonDecode(response.body);
      List<PostModel> posts = [];

      for (var item in data) {
        posts.add(PostModel.fromJson(item));
      }
      return posts;
    } else {
      throw Exception('Gagal dapatkan posts');
    }
  }
}
