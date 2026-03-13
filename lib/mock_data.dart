import 'models.dart';

final demoProfile = UserProfile(
  id: 'user_1',
  username: 'setthepace',
  posts: 12,
  followers: 3500,
  following: 584,
);

final demoGames = List<Game>.generate(
  6,
  (index) => Game(
    id: 'game_$index',
    title: 'Game ${index + 1}',
    developerName: 'gamerpro123',
    likes: 6200 + index * 10,
    comments: 380 + index,
    thumbnailAsset: 'assets/placeholder_space.png',
  ),
);

