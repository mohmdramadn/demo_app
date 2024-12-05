import 'package:flutter/material.dart';

import '../../../../core/styling/app_colors.dart';

class GreenCard extends StatelessWidget {
  final String title;

  const GreenCard({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          const AppColors().primaryColor,
          const AppColors().secondaryColor
        ]),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
