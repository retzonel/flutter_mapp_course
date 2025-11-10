import 'package:flutter/material.dart';
import 'package:flutter_mapp_course/data/notifiers.dart';
import 'package:flutter_mapp_course/views/pages/welcome_page.dart';
import 'package:flutter_mapp_course/views/widget_tree.dart';
import 'package:flutter_mapp_course/views/widgets/navbar_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isLigthModeNotifier,
      builder: (context, value, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.cyan,
              brightness: (isLigthModeNotifier).value
                  ? Brightness.light
                  : Brightness.dark,
            ),
          ),

          home: WelcomePage(),
        );
      },
    );
  }
}
