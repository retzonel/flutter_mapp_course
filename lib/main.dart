import 'package:flutter/material.dart';
import 'package:flutter_mapp_course/data/constants.dart';
import 'package:flutter_mapp_course/data/notifiers.dart';
import 'package:flutter_mapp_course/views/pages/welcome_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  void initState() {
    setupThemeMode();
    super.initState();
  }

  Future<void> setupThemeMode() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final bool? ligthMode = prefs.getBool(KeyConstants.ligthModeKey);
    isLigthModeNotifier.value = ligthMode ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isLigthModeNotifier,
      builder: (context, value, child) {
        return MaterialApp( 
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.cyan,
              brightness: isLigthModeNotifier.value
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
