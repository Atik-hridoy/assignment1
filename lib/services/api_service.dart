import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/post.dart';

class ApiService {
  static const String apiUrl = "https://dummyjson.com/posts";

  static Future<List<Post>> fetchPosts() async {
    final response = await http.get(Uri.parse(apiUrl));

    print("API Response: ${response.body}"); // Log the response to check data

    if (response.statusCode == 200) {
      final data = json.decode(response.body)['posts'] as List;
      return data.map((json) => Post.fromJson(json)).toList();
    } else {
      throw Exception("Failed to load posts");
    }
  }
}
