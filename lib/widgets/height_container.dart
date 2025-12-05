import 'package:flutter/material.dart';

class HeightContainer extends StatelessWidget {
  const HeightContainer(
      {super.key, required this.value, required this.onChanged});

  final double value;
  final ValueChanged<double> onChanged;
  @override
  Widget build(BuildContext context) {
    return Container(
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
          Slider(min: 0, value: value, max: 100, onChanged: onChanged),
        ],
      ),
    );
  }
}
