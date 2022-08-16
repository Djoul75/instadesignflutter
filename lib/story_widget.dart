import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  StoryWidget({super.key});

  final List storyItems = [
    {
      "pseudo": "lady.gaga",
      "photo": "assets/images/profil/photo-1.jpg",
    },
    {
      "pseudo": "zidane",
      "photo": "assets/images/profil/photo-2.jpg",
    },
    {
      "pseudo": "zlatan",
      "photo": "assets/images/profil/photo-3.jpg",
    },
    {
      "pseudo": "kanye.west",
      "photo": "assets/images/profil/photo-4.jpg",
    },
    {
      "pseudo": "madonna",
      "photo": "assets/images/profil/photo-5.jpg",
    },
    {
      "pseudo": "jay.z",
      "photo": "assets/images/profil/photo-6.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: storyItems.map((story) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'assets/images/insta-story.png',
                      height: 68,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 30,
                      backgroundImage: AssetImage(story["photo"]),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  story['pseudo'],
                  maxLines: 1,
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
