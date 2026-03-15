import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'mock_data.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  Future<void> _openGame(String url, BuildContext context) async {
    final uri = Uri.parse(url);
    final launched = await launchUrl(uri, mode: LaunchMode.externalApplication);
    if (!launched && context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Could not open game link')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Discover'), centerTitle: true),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: demoGames.length,
        itemBuilder: (context, index) {
          final game = demoGames[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: InkWell(
              onTap: () => _openGame(game.playUrl, context),
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
                            const Text(
                              '@gamerpro123 • Creator',
                              style: TextStyle(fontSize: 12),
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
                          image: game.thumbnailAsset.startsWith('http')
                              ? NetworkImage(game.thumbnailAsset)
                              : AssetImage(game.thumbnailAsset)
                                  as ImageProvider,
                          fit: BoxFit.cover,
                        ),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        'Game preview',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          shadows: [Shadow(blurRadius: 8, color: Colors.black)],
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _StatIcon(
                          icon: Icons.favorite_border,
                          label: '${game.likes ~/ 1000}k',
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
