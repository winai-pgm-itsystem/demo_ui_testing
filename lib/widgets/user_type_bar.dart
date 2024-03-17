import 'package:demo_ui_testing/mascot_screen.dart';
import 'package:flutter/material.dart';

class UserTypeBar extends StatelessWidget {
  const UserTypeBar({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
    required this.title,
  });

  final double screenWidth;
  final double screenHeight;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screenWidth,
      height: screenHeight * 0.1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              color: Colors.transparent,
              child: Row(
                children: [
                  const Icon(
                    Icons.account_circle_outlined,
                    color: Colors.black,
                    size: 40,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: SizedBox(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          'Balance',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const MascotScreen();
                          }));
                        },
                        child: Container(
                          color: Colors.black,
                          alignment: Alignment.center,
                          child: const Text(
                            'Show',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
