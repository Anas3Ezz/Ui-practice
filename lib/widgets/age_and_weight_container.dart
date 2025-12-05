import 'package:flutter/material.dart';

class AgeAndWeightContainer extends StatelessWidget {
  const AgeAndWeightContainer({
    super.key,
    required this.text,
    required this.age,
  });
  final String text;
  final String age;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      width: 175,
      height: 185,
      decoration: BoxDecoration(
          color: const Color(0xff24263B),
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          Text(
            text,
            style: const TextStyle(
                color: Color(0xff8B8C9E),
                fontSize: 20,
                fontWeight: FontWeight.w400),
          ),
          Text(
            age,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.w700,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FloatingActionButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                backgroundColor: const Color(0xff8B8C9E),
                onPressed: () {},
                child: const Icon(Icons.remove),
              ),
              FloatingActionButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                backgroundColor: const Color(0xff8B8C9E),
                onPressed: () {},
                child: const Icon(Icons.add),
              ),
            ],
          )
        ],
      ),
    );
  }
}
