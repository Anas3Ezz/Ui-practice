import 'package:eraa_projects/widgets/gender_container.dart';
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
            Container(
              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
              decoration: BoxDecoration(
                color: const Color(0xff333244),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Height',
                    style: TextStyle(
                      color: Color(0xff8B8C9E),
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '150',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(
                          text: ' cm',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Slider(
                    min: 0,
                    value: currentSliderValue,
                    max: 100,
                    onChanged: (value) {
                      setState(() {
                        currentSliderValue = value;
                      });
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
