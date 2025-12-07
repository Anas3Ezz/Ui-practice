import 'package:eraa_projects/result_screen.dart';
import 'package:flutter/material.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 70,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xffE83D67), // The background color
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0), // Rounded corners
            ),
            padding: const EdgeInsets.symmetric(
                horizontal: 50, vertical: 20), // Adjust size
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ResultScreen(),
                ));
          },
          child: const Text(
            'Calculate',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
          )),
    );
  }
}
