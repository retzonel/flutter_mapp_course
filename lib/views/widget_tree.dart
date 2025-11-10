import 'package:flutter/material.dart';
import 'package:flutter_mapp_course/data/notifiers.dart';
import 'package:flutter_mapp_course/views/pages/home_page.dart';
import 'package:flutter_mapp_course/views/pages/profile_page.dart';
import 'package:flutter_mapp_course/views/pages/settings_page.dart';
import 'package:flutter_mapp_course/views/widgets/navbar_widget.dart';

List<Widget> pages = [HomePage(), ProfilePage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Mapp"),
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: [
          ValueListenableBuilder(
            valueListenable: isLigthModeNotifier,
            builder: (context, isLightMode, child) {
              return IconButton(
                onPressed: () {
                  isLigthModeNotifier.value = !isLigthModeNotifier.value;
                },
                icon: Icon(isLightMode ? Icons.light_mode : Icons.dark_mode),
              );
            },

          ),

          

          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {   
                    return SettingsPage(title: 'Settings',);
                  },
                ),
              );
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, value, child) {
          return pages.elementAt(value);
        },
      ),
      bottomNavigationBar: NavBarWidget(),
    );
  }
}
