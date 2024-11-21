import 'dart:ffi';

import 'package:flutter/material.dart';

class Feeds extends StatelessWidget {
  const Feeds({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return const FeedItem(
          username: "Arifin Ilham",
          isVerified: true,
        );
      },
    );
  }
}

class FeedItem extends StatelessWidget {
  final String username;
  final bool isVerified;
  const FeedItem({super.key, required this.username, this.isVerified = false});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage("assets/avatars/mang_dadan.png"),
              ),
              const SizedBox(width: 10),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        username,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Color(0xFF262626)),
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      if (isVerified)
                        const Icon(
                          Icons.verified,
                          size: 15,
                          color: Colors.green,
                        )
                    ],
                  ),
                  const Text(
                    "Indonesia",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  )
                ],
              )),
              Image.asset(
                "assets/icons/dot_horizontal.png",
                height: 20,
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        ConstrainedBox(
            constraints:
                BoxConstraints(maxWidth: MediaQuery.of(context).size.width),
            child: Image.asset(
              "assets/posts/image.png",
              fit: BoxFit.cover,
            )),
        const SizedBox(height: 10),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Expanded(
                  child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 25,
                    height: 25,
                    margin: const EdgeInsets.only(right: 20),
                    child: Image.asset(
                      "assets/icons/love_outline.png",
                      scale: 2,
                    ),
                  ),
                  Container(
                    width: 25,
                    height: 25,
                    margin: const EdgeInsets.only(right: 20),
                    child: Image.asset(
                      "assets/icons/comment_outline.png",
                      scale: 2,
                    ),
                  ),
                  Container(
                    width: 25,
                    height: 25,
                    margin: const EdgeInsets.only(right: 20),
                    child: Image.asset(
                      "assets/icons/share_outline.png",
                      scale: 2,
                    ),
                  ),
                ],
              )),
              Image.asset(
                "assets/icons/bookmark_outline.png",
                scale: 2,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
