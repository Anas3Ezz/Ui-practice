import 'package:eraa_projects/widgets/gender_container.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GenderContainer(icon: Icons.male, text: 'Male'),
                SizedBox(width: 9),
                GenderContainer(icon: Icons.female, text: 'Female'),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
