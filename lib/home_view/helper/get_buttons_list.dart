import 'dart:developer';

import 'package:calculator/home_view/helper/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../clases/button.dart';

List<Button> getButtonsList({required BuildContext context}) {
  bool darkMode = Theme.of(context).brightness == Brightness.dark;
  log(darkMode.toString());
  List<Button> buttonsList = [
    Button(
      color: darkMode
          ? Constants.darkModeThirdButtonColor
          : Constants.lightModeThirdButtonColor,
      onPressed: () {},
      child: const Text(
        'AC',
        style: TextStyle(fontSize: 24),
      ),
    ),
    Button(
      color: darkMode
          ? Constants.darkModeThirdButtonColor
          : Constants.lightModeThirdButtonColor,
      onPressed: () {},
      child: const Text(
        '%',
        style: TextStyle(fontSize: 24),
      ),
    ),
    Button(
      color: darkMode
          ? Constants.darkModeThirdButtonColor
          : Constants.lightModeThirdButtonColor,
      onPressed: () {},
      child: SvgPicture.asset(
        'assets/images/delete.svg',
        colorFilter: darkMode
            ? const ColorFilter.mode(Colors.white, BlendMode.srcIn)
            : const ColorFilter.mode(Colors.black, BlendMode.srcIn),
      ),
    ),
    Button(
      color: darkMode
          ? Constants.darkModeSecondButtonColor
          : Constants.lightModeSecondButtonColor,
      onPressed: () {},
      child: const Text(
        '÷',
        style: TextStyle(fontSize: 24,color: Colors.white),
      ),
    ),
    Button(
      color: darkMode
          ? Constants.darkModeMainButtonColor
          : Constants.lightModeMainButtonColor,
      onPressed: () {},
      child: const Text(
        '7',
        style: TextStyle(fontSize: 24),
      ),
    ),
    Button(
      color: darkMode
          ? Constants.darkModeMainButtonColor
          : Constants.lightModeMainButtonColor,
      onPressed: () {},
      child: const Text(
        '8',
        style: TextStyle(fontSize: 24),
      ),
    ),
    Button(
      color: darkMode
          ? Constants.darkModeMainButtonColor
          : Constants.lightModeMainButtonColor,
      onPressed: () {},
      child: const Text(
        '9',
        style: TextStyle(fontSize: 24),
      ),
    ),
    Button(
      color: darkMode
          ? Constants.darkModeSecondButtonColor
          : Constants.lightModeSecondButtonColor,
      onPressed: () {},
      child: const Text(
        '×',
        style: TextStyle(fontSize: 24,color: Colors.white),
      ),
    ),
    Button(
      color: darkMode
          ? Constants.darkModeMainButtonColor
          : Constants.lightModeMainButtonColor,
      onPressed: () {},
      child: const Text(
        '4',
        style: TextStyle(fontSize: 24),
      ),
    ),
    Button(
      color: darkMode
          ? Constants.darkModeMainButtonColor
          : Constants.lightModeMainButtonColor,
      onPressed: () {},
      child: const Text(
        '5',
        style: TextStyle(fontSize: 24),
      ),
    ),
    Button(
      color: darkMode
          ? Constants.darkModeMainButtonColor
          : Constants.lightModeMainButtonColor,
      onPressed: () {},
      child: const Text(
        '6',
        style: TextStyle(fontSize: 24),
      ),
    ),
    Button(
      color: darkMode
          ? Constants.darkModeSecondButtonColor
          : Constants.lightModeSecondButtonColor,
      onPressed: () {},
      child: const Text(
        '-',
        style: TextStyle(fontSize: 24,color: Colors.white),
      ),
    ),
    Button(
      color: darkMode
          ? Constants.darkModeMainButtonColor
          : Constants.lightModeMainButtonColor,
      onPressed: () {},
      child: const Text(
        '1',
        style: TextStyle(fontSize: 24),
      ),
    ),
    Button(
      color: darkMode
          ? Constants.darkModeMainButtonColor
          : Constants.lightModeMainButtonColor,
      onPressed: () {},
      child: const Text(
        '2',
        style: TextStyle(fontSize: 24),
      ),
    ),
    Button(
      color: darkMode
          ? Constants.darkModeMainButtonColor
          : Constants.lightModeMainButtonColor,
      onPressed: () {},
      child: const Text(
        '3',
        style: TextStyle(fontSize: 24),
      ),
    ),
    Button(
      color: darkMode
          ? Constants.darkModeSecondButtonColor
          : Constants.lightModeSecondButtonColor,
      onPressed: () {},
      child: const Text(
        '+',
        style: TextStyle(fontSize: 24,color: Colors.white),
      ),
    ),
    Button(
      color: darkMode
          ? Constants.darkModeMainButtonColor
          : Constants.lightModeMainButtonColor,
      onPressed: () {},
      child: SvgPicture.asset(
        'assets/images/signChanger.svg',
        colorFilter: darkMode
            ? const ColorFilter.mode(Colors.white, BlendMode.srcIn)
            : const ColorFilter.mode(Colors.black, BlendMode.srcIn),
      ),
    ),
    Button(
      color: darkMode
          ? Constants.darkModeMainButtonColor
          : Constants.lightModeMainButtonColor,
      onPressed: () {},
      child: const Text(
        '0',
        style: TextStyle(fontSize: 24),
      ),
    ),
    Button(
      color: darkMode
          ? Constants.darkModeMainButtonColor
          : Constants.lightModeMainButtonColor,
      onPressed: () {},
      child: const Text(
        '.',
        style: TextStyle(fontSize: 24),
      ),
    ),
    Button(
      color: darkMode
          ? Constants.darkModeSecondButtonColor
          : Constants.lightModeSecondButtonColor,
      onPressed: () {},
      child: const Text(
        '=',
        style: TextStyle(fontSize: 24,color: Colors.white),
      ),
    ),
  ];

  return buttonsList;
}
