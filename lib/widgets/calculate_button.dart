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
      child: Container(
        color: const Color(0xffE83D67),
        width: double.infinity,
        height: 120.0,
        alignment: Alignment.center,
        child: const Text(
          'Calculate',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      // child: ElevatedButton(
      //     style: ElevatedButton.styleFrom(
      //       backgroundColor: const Color(0xffE83D67), // The background color
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(10.0), // Rounded corners
      //       ),
      //       padding: const EdgeInsets.symmetric(
      //           horizontal: 50, vertical: 20), // Adjust size
      //     ),

      //     child: const Text(
      //       'Calculate',
      //       style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
      //     )),
    );
  }
}
