import 'package:eraa_projects/widgets/calculate_button.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.bmiValue});
  final double bmiValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF24273A),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Your Result',
            style: TextStyle(
              color: Colors.white,
              fontSize: 32.0,
              fontWeight: FontWeight.bold,
            )),
        backgroundColor: const Color(0xFF24273A),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          spacing: 50,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, right: 20.0, bottom: 0.0, top: 20),
              child: Container(
                padding: const EdgeInsets.all(25),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xff333244),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  spacing: 150,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      bmiStatus(),
                      style: TextStyle(
                        color: getBmiColor(),
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      bmiValue.toStringAsFixed(2),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 100.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25.0, vertical: 20),
                      child: Text(
                        bmiInfo(),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 22.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const CalculateButton(text: 'Re-Calculate'))
          ],
        ),
      ),
    );
  }

  String bmiStatus() {
    if (bmiValue <= 18.4) {
      return 'Under wegiht';
    } else if (bmiValue > 18.5 && bmiValue <= 24.9) {
      return 'normal';
    } else if (bmiValue > 24.9 && bmiValue < 39.9) {
      return 'overweight';
    } else {
      return 'Too overweight';
    }
  }

  String bmiInfo() {
    if (bmiValue <= 18.4) {
      return 'You have a body weight lower than normal. You may need to gain weight.';
    } else if (bmiValue > 18.5 && bmiValue <= 24.9) {
      return 'You have a Normal Body Weight. Good Job.';
    } else if (bmiValue > 24.9 && bmiValue < 39.9) {
      return 'You have a body weight higher than normal. You should consider starting an exercise routine.';
    } else {
      return 'You are in the obese range. This may increase your risk of health problems. Please consult a doctor.';
    }
  }

  Color getBmiColor() {
    if (bmiValue <= 18.4) {
      return Colors.red;
    } else if (bmiValue > 18.5 && bmiValue <= 24.9) {
      return Colors.green;
    } else if (bmiValue > 24.9 && bmiValue < 39.9) {
      return Colors.orange;
    } else {
      return Colors.red;
    }
  }
}
