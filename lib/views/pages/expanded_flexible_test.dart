import 'package:flutter/material.dart';
import 'package:flutter_mapp_course/data/constants.dart';

class ExpandedFlexibleTest extends StatelessWidget {
  const ExpandedFlexibleTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(child: Container(color: Colors.amber, height: 20)),
              Flexible(
                child: Container(
                  color: Colors.blueAccent,
                  height: 20,
                  child: Text(
                    "Flexible Here",
                    style: AppStyles.tealTitleBoldTT.copyWith(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
