import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  const Stories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 95,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 100,
        itemBuilder: (context, index) {
          return Row(
            children: [
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    width: 65,
                    child: Stack(
                      children: [
                        ClipOval(
                          child: Container(
                            width: 65,
                            height: 65,
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                image: (index == 1)
                                    ? const DecorationImage(
                                        image: AssetImage(
                                            "assets/icons/stroke_new_dash.png"))
                                    : DecorationImage(
                                        image: (index != 0)
                                            ? const AssetImage(
                                                "assets/icons/stroke_on_solid.png")
                                            : const AssetImage(
                                                "assets/avatar/mang_dadan.png"))),
                            child: Container(
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          "assets/avatars/mang_dadan.png"))),
                            ),
                          ),
                        ),
                        if (index == 0)
                          Positioned(
                            right: 0,
                            bottom: 0,
                            child: Container(
                                width: 26,
                                height: 26,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle),
                                child: const Icon(
                                  Icons.add_circle,
                                  color: Colors.blue,
                                )),
                          ),
                        const SizedBox(
                          height: 2,
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          );
        },
      ),
    );
  }
}
