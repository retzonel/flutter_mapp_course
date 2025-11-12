import 'package:flutter/material.dart';
import 'package:flutter_mapp_course/data/constants.dart';
import 'package:flutter_mapp_course/views/widgets/container_widget.dart';
import 'package:flutter_mapp_course/views/widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> list = [
      ConstantValues.ha,
      ConstantValues.hi,
      ConstantValues.ho,
    ];

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            HeroWidget(title: "Flutter Mapp"),
            Column(
              children: List.generate(list.length, (index) {
                return ContainerWidget(
                  title: list.elementAt(index),
                  description: "description",
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
