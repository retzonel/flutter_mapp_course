import 'package:flutter/material.dart';
import 'package:flutter_mapp_course/data/constants.dart';
import 'package:flutter_mapp_course/data/notifiers.dart';
import 'package:flutter_mapp_course/views/widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          HeroWidget(),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Basic Layout", style: AppStyles.tealTitleBoldTT),
                    Text(
                      "The description of this",
                      style: AppStyles.descritionText,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
