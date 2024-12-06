import 'package:calculator/home_view/widgets/buttons_builder.dart';
import 'package:flutter/material.dart';

import 'custom_button.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          ButtonsBuilder(),
        ],
      ),
    );
  }
}
