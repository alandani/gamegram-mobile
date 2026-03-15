import 'package:flutter/material.dart';

import 'api_client.dart';
import 'mock_data.dart';
import 'models.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({super.key});

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  bool _loading = true;
  String? _error;
  List<Game> _games = const [];

  @override
  void initState() {
    super.initState();
    _loadGames();
  }

  Future<void> _loadGames() async {
    setState(() {
      _loading = true;
      _error = null;
    });

    try {
      final games = await GameApi.fetchGames();
      if (!mounted) return;
      setState(() {
        _games = games;
      });
    } catch (e) {
      if (!mounted) return;
      setState(() {
        _error = 'Failed to load games: $e';
      });
    } finally {
      if (!mounted) return;
      setState(() {
        _loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final games = _games.isNotEmpty ? _games : demoGames;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Discover'),
        centerTitle: true,
        actions: [
          if (_loading)
            const Padding(
              padding: EdgeInsets.only(right: 16),
              child: Center(
                child: SizedBox(
                  width: 18,
                  height: 18,
                  child: CircularProgressIndicator(strokeWidth: 2),
                ),
              ),
            ),
          if (!_loading)
            IconButton(
              icon: const Icon(Icons.refresh),
              onPressed: _loadGames,
            ),
        ],
      ),
      body: _error != null && _games.isEmpty
          ? Center(
              child: Text(
                _error!,
                style: const TextStyle(color: Colors.redAccent),
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: games.length,
              itemBuilder: (context, index) {
                final game = games[index];
                return Card(
                  margin: const EdgeInsets.only(bottom: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: InkWell(
                    onTap: () {
                      // later: open game details
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const CircleAvatar(
                                backgroundColor: Colors.purple,
                                child: Icon(Icons.person),
                              ),
                              const SizedBox(width: 12),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    game.title,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '@${game.developerName} • Creator',
                                    style: const TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          Container(
                            height: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              image: DecorationImage(
                                image: AssetImage(game.thumbnailAsset),
                                fit: BoxFit.cover,
                              ),
                            ),
                            alignment: Alignment.center,
                            child: const Text(
                              'Game preview',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                shadows: [
                                  Shadow(blurRadius: 8, color: Colors.black)
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 12),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              _StatIcon(
                                icon: Icons.favorite_border,
                                label: games == demoGames
                                    ? '${game.likes ~/ 1000}k'
                                    : '${game.likes}',
                              ),
                              _StatIcon(
                                icon: Icons.comment_outlined,
                                label: '${game.comments}',
                              ),
                              const _StatIcon(
                                icon: Icons.bookmark_border,
                                label: 'Save',
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }
}

class _StatIcon extends StatelessWidget {
  const _StatIcon({required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [Icon(icon, size: 18), const SizedBox(width: 6), Text(label)],
    );
  }
}
