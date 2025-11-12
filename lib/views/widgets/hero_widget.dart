import 'package:flutter/material.dart';
import 'package:flutter_mapp_course/data/constants.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Hero(
          tag: "hero1",
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset(
              "assets/images/bg_1.jpg",
              color: Colors.teal,
              colorBlendMode: BlendMode.multiply,
            ),
          ),
        ),

        Center(
          child: Container(
            padding: EdgeInsets.only(top: 100),
            child: FittedBox(
              child: Text(
                title,
                style: AppStyles.tealTitleBoldTT.copyWith(
                  letterSpacing: 50,
                  fontSize: 50,
                  color: Colors.white10
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
