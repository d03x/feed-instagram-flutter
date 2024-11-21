import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/src/screens/home/widgets/feed.dart';
import 'package:instagram_ui_clone/src/screens/home/widgets/stories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Image.asset(
          "assets/logo/instagram.png",
          height: 35,
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(left: 24),
            width: 25,
            height: 50,
            child: Image.asset(
              "assets/icons/plus_outline.png",
              scale: 2,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 24),
            width: 25,
            height: 50,
            child: Image.asset(
              "assets/icons/love_outline.png",
              scale: 2,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 24, right: 10),
            width: 25,
            height: 50,
            child: Image.asset(
              "assets/icons/message_outline.png",
              scale: 2,
            ),
          )
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Stories(),
            Divider(
              height: 3,
            ),
            SizedBox(
              height: 5,
            ),
            Feeds()
          ],
        ),
      ),
    );
  }
}
