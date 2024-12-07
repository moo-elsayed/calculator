import 'package:calculator/home_view/helper/constants.dart';
import 'package:calculator/home_view/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

void main() {
  runApp(
    const Calculator(),
  );
}

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  ThemeMode _isDarkMode = ThemeMode.system;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Constants.lightModeScaffoldBackgroundColor,
      ),
      darkTheme: ThemeData.dark(),
      // Dark theme
      themeMode: _isDarkMode,
      // Toggle theme
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                LiteRollingSwitch(
                  width: 90,
                  value: _isDarkMode != ThemeMode.dark,
                  textOn: '',
                  textOff: '',
                  colorOn: Constants.darkModeMainButtonColor,
                  colorOff: Constants.lightModeSecondButtonColor,
                  iconOn: Icons.nightlight_round,
                  iconOff: Icons.wb_sunny,
                  onChanged: (value) {
                    setState(() {
                      _isDarkMode = value
                          ? ThemeMode.dark
                          : ThemeMode.light; // Update the theme state
                    });
                  },
                  onTap: () {},
                  onDoubleTap: () {},
                  onSwipe: () {},
                ),
                const Expanded(
                  child: HomeViewBody(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
