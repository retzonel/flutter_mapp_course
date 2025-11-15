import 'package:flutter/material.dart';
import 'package:flutter_mapp_course/data/constants.dart';
import 'package:flutter_mapp_course/views/pages/course_page.dart';
import 'package:flutter_mapp_course/views/pages/settings_page.dart';
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
      ConstantValues.he,
      ConstantValues.hu,
    ];

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            HeroWidget(title: "Flutter Mapp", nextPage: CoursePage(),),
            
            ...List.generate(list.length, (index) {
              return ContainerWidget(
                title: list.elementAt(index),
                description: "description",
              );
            }),
          ],
        ),
      ),
    );
  }
}
