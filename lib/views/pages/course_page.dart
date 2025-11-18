import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_mapp_course/views/widgets/hero_widget.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class CoursePage extends StatefulWidget {
  const CoursePage({super.key});
  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(children: [HeroWidget(title: "text")]),
        ),
      ),
    );
  }

  void getData() async {
    var url = Uri.https('bored-api.appbrewery.com', '/random');

    // Await the http get response, then decode the json-formatted response.
    var response = await http.get(url);

    if (response.statusCode == 200) {
      var jsonResponse =
          convert.jsonDecode(response.body) as Map<String, dynamic>;
      var activity = jsonResponse['activity'];
      print('activity from http: $activity.');
      log(response.body);
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }
}
