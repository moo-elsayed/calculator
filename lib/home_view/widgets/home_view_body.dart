import 'package:calculator/home_view/calculator_cubit/calculator_cubit.dart';
import 'package:calculator/home_view/calculator_cubit/calculator_states.dart';
import 'package:calculator/home_view/widgets/buttons_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalculatorCubit, CalculatorStates>(
      builder: (context, state) => Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            alignment: Alignment.centerRight,
            child: Opacity(
              opacity: 0.7,
              child: Text(
                BlocProvider.of<CalculatorCubit>(context).lastExpression,
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
          const ButtonsBuilder(),
        ],
      ),
    );
  }
}
