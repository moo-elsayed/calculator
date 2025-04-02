import 'package:calculator/home_view/calculator_cubit/calculator_cubit.dart';
import 'package:calculator/home_view/helper/constants.dart';
import 'package:calculator/home_view/widgets/buttons_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    CalculatorCubit calculatorCubit = context.watch<CalculatorCubit>();
    return Scaffold(
      backgroundColor: calculatorCubit.isDark
          ? Constants.darkModeScaffoldBackgroundColor
          : Constants.lightModeScaffoldBackgroundColor,
      appBar: AppBar(
        title: const Text('Calculator'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            ListTile(
              title: Text(
                calculatorCubit.isDark ? 'dark mode' : 'white mode',
              ),
              leading: Icon(
                calculatorCubit.isDark ? Icons.dark_mode : Icons.light_mode,
              ),
              trailing: Switch(
                value: calculatorCubit.isDark,
                onChanged: (value) => calculatorCubit.changeMode(),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    const Spacer(),
                    Container(
                      alignment: Alignment.centerRight,
                      child: Opacity(
                        opacity: 0.7,
                        child: Text(
                          BlocProvider.of<CalculatorCubit>(context)
                              .lastExpression,
                          style: const TextStyle(
                            fontSize: 48,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      alignment: Alignment.centerRight,
                      child: SingleChildScrollView(
                        reverse: true,
                        scrollDirection: Axis.horizontal,
                        child: Text(
                          BlocProvider.of<CalculatorCubit>(context).expression,
                          style: const TextStyle(
                            fontSize: 72,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Expanded(flex: 5, child: ButtonsBuilder()),
            ],
          ),
        ),
      ),
    );
  }
}