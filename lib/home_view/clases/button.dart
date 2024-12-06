import 'package:flutter/material.dart';

class Button {
  final Color color;
  final Widget child;
  final void Function() onPressed;

  Button({required this.onPressed, required this.child, required this.color});
}
