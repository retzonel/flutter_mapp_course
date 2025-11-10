import 'package:flutter/material.dart';
import 'package:flutter_mapp_course/data/notifiers.dart';
import 'package:flutter_mapp_course/views/pages/settings_page.dart';
import 'package:flutter_mapp_course/views/pages/welcome_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          SizedBox(
            child: ListTile(
              title: Text("Log Out"),
              tileColor: Colors.teal.shade900,
              onTap: () {
                selectedPageNotifier.value = 0;
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return WelcomePage();
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
