import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  PostWidget({super.key});

  final List postItems = [
    {
      "pseudo": "lady.gaga",
      "photo": "assets/images/posts/photo-1.jpg",
      "photoProfil": "assets/images/profil/photo-1.jpg",
      "description": "Look amazing, what do you like to see?",
    },
    {
      "pseudo": "zidane",
      "photo": "assets/images/posts/photo-2.jpg",
      "photoProfil": "assets/images/profil/photo-2.jpg",
      "description": "New travel !!! New York & Chicago, we're coming!",
    },
    {
      "pseudo": "zlatan",
      "photo": "assets/images/posts/photo-3.jpg",
      "photoProfil": "assets/images/profil/photo-3.jpg",
      "description": "He slid back into his former position",
    },
    {
      "pseudo": "kanye.west",
      "photo": "assets/images/posts/photo-4.jpg",
      "photoProfil": "assets/images/profil/photo-4.jpg",
      "description": "Getting up early all the time",
    },
    {
      "pseudo": "madonna",
      "photo": "assets/images/posts/photo-5.jpg",
      "photoProfil": "assets/images/profil/photo-5.jpg",
      "description": "And on top of that there's the curse of travelling",
    },
    {
      "pseudo": "jay.z",
      "photo": "assets/images/posts/photo-6.jpg",
      "photoProfil": "assets/images/profil/photo-6.jpg",
      "description": "For instance, whenever I go back to the guest",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: postItems.map((post) {
        return Column(
          children: [
            Container(
              height: 50,
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(post["photoProfil"]),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    post["pseudo"],
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Expanded(child: Column()),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_horiz),
                  )
                ],
              ),
            ),
            Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(post["photo"]),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_outline),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.message_outlined),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.send_outlined),
                ),
                Expanded(child: Container()),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.bookmark_outline),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 10,
                    backgroundImage: AssetImage(post['photoProfil']),
                  ),
                  const SizedBox(width: 10),
                  RichText(
                    text: TextSpan(
                      text: 'Aimé par ',
                      style: DefaultTextStyle.of(context).style,
                      children: const [
                        TextSpan(
                          text: 'jesus',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        TextSpan(
                          text: ' et ',
                        ),
                        TextSpan(
                          text: '123 autres personnes',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        post['pseudo'],
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: Text(
                          post['description'],
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Text(
                        'See more',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.grey.shade400,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'See 35 comments',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade400),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        '16 min ago • ',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade500,
                        ),
                      ),
                      const Text(
                        'Translate',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        );
      }).toList(),
    );
  }
}
