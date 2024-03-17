import 'package:flutter/material.dart';

class CardTextWidget extends StatelessWidget {
  const CardTextWidget({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.currentPrice,
    required this.oldPrice,
  });

  final String image;
  final String title;
  final String subTitle;
  final String currentPrice;
  final String oldPrice;

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
                  '\$$currentPrice',
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                Text(
                  '$oldPrice%',
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
