import 'package:eraa_projects/widgets/age_and_weight_container.dart';
import 'package:eraa_projects/widgets/gender_container.dart';
import 'package:eraa_projects/widgets/height_container.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double currentSliderValue = 50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  GenderContainer(icon: Icons.male, text: 'Male'),
                  SizedBox(width: 9),
                  GenderContainer(icon: Icons.female, text: 'Female'),
                ])),
            const SizedBox(height: 15),
            HeightContainer(
                value: currentSliderValue,
                onChanged: (value) {
                  setState(() {
                    currentSliderValue = value;
                  });
                }),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AgeAndWeightContainer(
                  text: 'Weight',
                  age: '60',
                ),
                SizedBox(width: 12),
                AgeAndWeightContainer(
                  text: 'Weight',
                  age: '60',
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
