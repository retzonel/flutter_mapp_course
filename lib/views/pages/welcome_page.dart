import 'package:flutter/material.dart';
import 'package:flutter_mapp_course/views/widget_tree.dart';
import 'package:flutter_mapp_course/views/widgets/hero_widget.dart';
import 'package:lottie/lottie.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(height: 20),
            Lottie.asset("assets/lotties/Welcome.json"),
            FittedBox(
              child: Text(
                "Flutter Mapp",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 50.0,
                  fontSize: 50,
                ),
              ),
            ),

            SizedBox(height: 20),

            FilledButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return WidgetTree();
                    },
                  ),
                );
              },
              style: FilledButton.styleFrom(
                minimumSize: Size(double.infinity, 40.0),
              ),
              child: Text("Get Started"),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return WidgetTree();
                    },
                  ),
                );
              },
              style: TextButton.styleFrom(
                minimumSize: Size(double.infinity, 40.0),
              ),
              child: Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
