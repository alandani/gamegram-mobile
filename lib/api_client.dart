import 'dart:convert';

import 'package:http/http.dart' as http;

import 'models.dart';

class GameApi {
  static const String _baseUrl = 'https://gamegram-backend-2fqi.onrender.com';

  static Future<List<Game>> fetchGames() async {
    final uri = Uri.parse('$_baseUrl/games/');
    final response = await http.get(uri);

    if (response.statusCode != 200) {
      throw Exception(
        'Failed to load games (${response.statusCode}): ${response.body}',
      );
    }

    final decoded = jsonDecode(response.body);
    List<dynamic> items;

    if (decoded is List) {
      items = decoded;
    } else if (decoded is Map<String, dynamic>) {
      items = (decoded['results'] ??
              decoded['items'] ??
              decoded['data'] ??
              decoded['games'] ??
              []) as List<dynamic>;
    } else {
      throw Exception('Unexpected response format: ${decoded.runtimeType}');
    }

    return items.map<Game>((raw) {
      final item = raw as Map<String, dynamic>? ?? {};
      final creator = item['creator'] as Map<String, dynamic>? ?? {};

      return Game(
        id: item['id'] as String? ?? '',
        title: item['title'] as String? ?? 'Untitled',
        developerName: creator['username'] as String? ?? 'Unknown',
        likes: item['like_count'] as int? ?? 0,
        comments: item['comment_count'] as int? ?? 0,
        thumbnailAsset: 'assets/placeholder_space.png',
      );
    }).toList();
  }
}
