import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CardPercentageWidget extends StatelessWidget {
  const CardPercentageWidget({
    super.key,
    required this.percent,
    required this.title,
    required this.subTitle,
    required this.currentPrice,
    required this.oldPrice,
  });

  final double percent;
  final String title;
  final String subTitle;
  final int currentPrice;
  final int oldPrice;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      margin: const EdgeInsetsDirectional.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const SizedBox(width: 5),
              CircularPercentIndicator(
                radius: 20.0,
                lineWidth: 2.0,
                percent: percent,
                center: Text("${(percent * 100).toStringAsFixed(0)}%"),
                progressColor: Colors.black,
              ),
              const SizedBox(width: 15),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    subTitle,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '+\$$currentPrice',
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                Text(
                  '+\$$oldPrice',
                  style: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
