import 'package:flutter/material.dart';
import 'package:passvera/presentation/core/theme/colors.dart';

class OnboardViewBody extends StatelessWidget {
  final String title;
  final String description;

  const OnboardViewBody(
      {super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15, right: 15, bottom: 50, top: 70),
      decoration: BoxDecoration(
        color: MyColors.brand,
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
          color: MyColors.ink,
          width: 3.0,
        ),
        boxShadow: const [
          BoxShadow(
            color: MyColors.inkSoft,
            offset: Offset(-3.0, 3.0),
            blurRadius: 5.0,
            blurStyle: BlurStyle.solid,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              description,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
