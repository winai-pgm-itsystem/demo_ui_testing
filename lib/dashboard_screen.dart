import 'package:flutter/material.dart';
import 'widgets/card_text_widget.dart';
import 'widgets/card_percentage_widget.dart';
import 'widgets/user_type_bar.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key, required this.userType});
  final String userType;

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 30),
            UserTypeBar(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
              title: widget.userType,
            ),
            Expanded(
              child: Container(
                color: Colors.transparent,
                width: double.infinity,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'Activity',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                          fontSize: 26,
                        ),
                      ),
                    ),
                    CardTextWidget(
                      image: 'apple',
                      title: 'Apple',
                      subTitle: 'APPL - 2,400,66B',
                      currentPrice: '152,48',
                      oldPrice: '+0,49',
                    ),
                    CardTextWidget(
                      image: 'microsoft',
                      title: 'Microsoft',
                      subTitle: 'MSFT - 1,911,43B',
                      currentPrice: '261,53',
                      oldPrice: '-1,39',
                    ),
                    CardTextWidget(
                      image: 'nvidia',
                      title: 'Nvidia',
                      subTitle: 'NVDA - 518,78B',
                      currentPrice: '213,75',
                      oldPrice: '+1,36',
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: screenWidth,
                height: double.infinity,
                color: const Color.fromARGB(255, 235, 232, 232),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'Obligation',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                          fontSize: 26,
                        ),
                      ),
                    ),
                    CardPercentageWidget(
                      percent: 0.82,
                      title: 'Mantals',
                      subTitle: 'End at 24-03-2024',
                      currentPrice: 430,
                      oldPrice: 953,
                    ),
                    CardPercentageWidget(
                      percent: 0.57,
                      title: 'Social Analaytics',
                      subTitle: 'End at 24-03-2024',
                      currentPrice: 450,
                      oldPrice: 752,
                    ),
                    CardPercentageWidget(
                      percent: 0.37,
                      title: 'Action TVs',
                      subTitle: 'End at 24-03-2024',
                      currentPrice: 119,
                      oldPrice: 352,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
