import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key, required this.title});

  final String title;
  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  TextEditingController controller = TextEditingController();
  bool? isChecked = false;
  bool isSwiteched = false;
  double sliderValue = 0.0;
  String? menuItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        automaticallyImplyLeading: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextField(
                controller: controller,
                decoration: InputDecoration(border: OutlineInputBorder()),
                onEditingComplete: () {
                  setState(() {});
                },
              ),

              DropdownButton(
                value: menuItem,
                items: [
                  DropdownMenuItem(value: "e1", child: Text("e1")),
                  DropdownMenuItem(value: "e2", child: Text("e2")),
                  DropdownMenuItem(value: "e3", child: Text("e3")),
                ],
                onChanged: (value) {
                  setState(() {
                    menuItem = value;
                  });
                },
              ),

              SizedBox(height: 20),
              Text(controller.text),

              SizedBox(height: 20),
              Checkbox(
                tristate: true,
                value: isChecked,
                onChanged: (bool? value) => setState(() => isChecked = value!),
              ),
              SizedBox(height: 30),
              CheckboxListTile(
                title: Text("CheckedboxListTile"),
                tristate: true,
                value: isChecked,
                onChanged: (value) => setState(() => isChecked = value),
              ),

              Switch(
                value: isSwiteched,
                onChanged: (value) {
                  setState(() {
                    isSwiteched = value;
                  });
                },
              ),

              SwitchListTile(
                title: Text('SwitchListTile'),
                value: isSwiteched,
                onChanged: (value) {
                  setState(() {
                    isSwiteched = value;
                  });
                },
              ),

              Slider(
                value: sliderValue,
                max: 10.0,
                divisions: 10,
                onChanged: (value) {
                  setState(() {
                    sliderValue = value;
                  });
                  print("$sliderValue");
                },
              ),

              InkWell(
                onTap: () {
                  print("fokkkkkkkkkk");
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  color: Colors.white12,
                ),
              ),

              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  foregroundColor: Colors.white,
                ),
                child: Text("Elevated Button"),
              ),

              ElevatedButton(onPressed: () {}, child: Text("Elevated Button")),

              FilledButton(onPressed: () {}, child: Text("Filled Button")),

              TextButton(onPressed: () {}, child: Text("Text Button")),

              OutlinedButton(onPressed: () {}, child: Text("Outlined Button")),

              CloseButton(),
              BackButton(
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
