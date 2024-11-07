import 'package:flutter/material.dart';

class KidsCategoryPage extends StatelessWidget {
  const KidsCategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kids' Category"),
      ),
      body: Center(
        child: const Text(
          "This is the Kids' Category Page.",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
