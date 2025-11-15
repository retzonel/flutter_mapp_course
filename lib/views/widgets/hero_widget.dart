import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_mapp_course/data/constants.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key, required this.title, this.nextPage});

  final String title;
  final Widget? nextPage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: nextPage != null
          ? () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return nextPage!;
                  },
                ),
              );
            }
          : null,
      child: Stack(
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 250,
                  child: FittedBox(
                    alignment: AlignmentGeometry.center,
                    child: Text(
                      title,
                      style: AppStyles.tealTitleBoldTT.copyWith(
                        letterSpacing: 50,
                        fontSize: 50,
                        color: Colors.white10,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
