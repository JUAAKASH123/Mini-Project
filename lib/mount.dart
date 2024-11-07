import 'package:flutter/material.dart';

class SetmScreen extends StatelessWidget {
  const SetmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Option 1'),
            onTap: () {
              // Handle option 1 tap
            },
          ),
          ListTile(
            title: const Text('Option 2'),
            onTap: () {
              // Handle option 2 tap
            },
          ),
          ListTile(
            title: const Text('Option 3'),
            onTap: () {
              // Handle option 3 tap
            },
          ),
        ],
      ),
    );
  }
}
