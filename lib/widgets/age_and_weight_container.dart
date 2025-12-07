import 'package:flutter/material.dart';

class AgeAndWeightContainer extends StatefulWidget {
  const AgeAndWeightContainer({
    super.key,
    required this.text,
  });
  final String text;
  @override
  State<AgeAndWeightContainer> createState() => _AgeAndWeightContainerState();
}

class _AgeAndWeightContainerState extends State<AgeAndWeightContainer> {
  int theCounter = 70;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      width: 175,
      height: 200,
      decoration: BoxDecoration(
          color: const Color(0xff24263B),
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          Text(
            widget.text,
            style: const TextStyle(
                color: Color(0xff8B8C9E),
                fontSize: 20,
                fontWeight: FontWeight.w400),
          ),
          Text(
            theCounter.toString(),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FloatingActionButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                backgroundColor: const Color(0xff8B8C9E),
                onPressed: () {
                  if (theCounter > 0) {
                    setState(() {
                      theCounter--;
                    });
                  }
                },
                child: const Icon(Icons.remove),
              ),
              FloatingActionButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                backgroundColor: const Color(0xff8B8C9E),
                onPressed: () {
                  setState(() {
                    theCounter++;
                  });
                },
                child: const Icon(Icons.add),
              ),
            ],
          )
        ],
      ),
    );
  }
}
