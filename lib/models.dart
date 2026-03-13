class Game {
  Game({
    required this.id,
    required this.title,
    required this.developerName,
    required this.likes,
    required this.comments,
    required this.thumbnailAsset,
    this.isLiked = false,
  });

  final String id;
  final String title;
  final String developerName;
  final int likes;
  final int comments;
  final String thumbnailAsset;
  final bool isLiked;
}

class UserProfile {
  UserProfile({
    required this.id,
    required this.username,
    required this.posts,
    required this.followers,
    required this.following,
  });

  final String id;
  final String username;
  final int posts;
  final int followers;
  final int following;
}

