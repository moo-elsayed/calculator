import 'package:flutter/material.dart';

import '../clases/button.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.button});

  final Button button;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: button.onPressed,
      elevation: 0,
      color: button.color,
      height: 72,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(24),
        ),
      ),
      child: button.child,
    );
  }
}
