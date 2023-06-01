import 'package:first_app_flutter/theme.dart';
import 'package:flutter/material.dart';

class WelcomeMessageContainer extends StatelessWidget {
  const WelcomeMessageContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Bienvenido",
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: kPrimaryColor),
          ),
          IconButton(
              iconSize: 35.0,
              onPressed: () {},
              color: kPrimaryColor,
              icon: const Icon(Icons.accessibility_new)),
        ],
      ),
    );
  }
}
