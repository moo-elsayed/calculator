import 'dart:developer';
import 'package:calculator/home_view/calculator_cubit/calculator_cubit.dart';
import 'package:calculator/home_view/helper/shared_preferences_manager.dart';
import 'package:calculator/home_view/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final bool isDark = await SharedPreferencesManager.getMode();
  log(isDark.toString());

  runApp(Calculator(isDark: isDark));
}

class Calculator extends StatelessWidget {
  const Calculator({super.key, required this.isDark});

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CalculatorCubit()..setMode(isDark),
      child: Builder(builder: (context) {
        CalculatorCubit calculatorCubit = context.watch<CalculatorCubit>();
        return MaterialApp(
          darkTheme:
              calculatorCubit.isDark ? ThemeData.dark() : ThemeData.light(),
          themeMode: calculatorCubit.isDark ? ThemeMode.dark : ThemeMode.light,
          debugShowCheckedModeBanner: false,
          home: const HomeViewBody(),
        );
      }),
    );
  }
}
