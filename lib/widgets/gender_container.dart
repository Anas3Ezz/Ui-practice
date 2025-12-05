import 'package:flutter/material.dart';

class GenderContainer extends StatelessWidget {
  const GenderContainer({
    super.key,
    required this.icon,
    required this.text,
  });
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 6, right: 6, top: 0, bottom: 19),
      decoration: BoxDecoration(
          color: const Color(0xff24263B),
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          Icon(
            icon,
            size: 160,
          ),
          Text(
            text,
            style: const TextStyle(
                color: Color(0xff8B8C9E),
                fontSize: 20,
                fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
