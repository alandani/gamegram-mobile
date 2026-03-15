class Game {
  Game({
    required this.id,
    required this.title,
    required this.developerName,
    required this.likes,
    required this.comments,
    required this.thumbnailAsset,
    required this.playUrl,
    this.isLiked = false,
  });

  final String id;
  final String title;
  final String developerName;
  final int likes;
  final int comments;
  final String thumbnailAsset;
  final String playUrl;
  final bool isLiked;
}

class SandboxGame {
  SandboxGame({
    required this.id,
    required this.name,
    required this.sandboxUrl,
    required this.runnableUrl,
    required this.thumbnail,
    required this.creatorName,
  });

  final String id;
  final String name;
  final String sandboxUrl;
  final String runnableUrl;
  final String thumbnail;
  final String creatorName;
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
