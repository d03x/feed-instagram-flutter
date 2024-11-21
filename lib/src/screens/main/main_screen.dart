import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/src/screens/home/home_screen.dart';
import 'package:instagram_ui_clone/src/screens/profile/profile_screen.dart';

class MainScreen extends StatefulWidget {
  // ignore: non_constant_identifier_names

  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _index = 0;
  final screens = [
    const HomeScreen(
      key: Key("0"),
    ),
    const HomeScreen(
      key: Key("1"),
    ),
    const HomeScreen(
      key: Key("2"),
    ),
    const ProfileScreen(
      key: Key("3"),
    ),
    const ProfileScreen(
      key: Key("4"),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: screens[_index],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: _index,
          elevation: 2,
          onTap: (value) {
            _index = value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                icon: Image.asset(scale: 2, "assets/icons/home_outline.png"),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Image.asset(scale: 2, "assets/icons/search_outline.png"),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Image.asset(scale: 2, "assets/icons/reels_outline.png"),
                label: "Reels"),
            BottomNavigationBarItem(
                icon: Image.asset(scale: 2, "assets/icons/shop_outline.png"),
                label: "Shop"),
            BottomNavigationBarItem(
                icon: Container(
                  height: 25,
                  width: 25,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("assets/avatars/mang_dadan.png"))),
                ),
                label: "Shop")
          ]),
    );
  }
}
