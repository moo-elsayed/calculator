import 'package:calculator/home_view/clases/button.dart';
import 'package:flutter/material.dart';
import '../helper/get_buttons_list.dart';
import 'custom_button.dart';

class ButtonsBuilder extends StatelessWidget {
  const ButtonsBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    List<Button> buttonsList = getButtonsList(context: context);
    return Expanded(
      child: GridView.builder(
        itemCount: 20,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, mainAxisSpacing: 16, crossAxisSpacing: 16),
        itemBuilder: (context, index) {
          return CustomButton(
            button: Button(
                onPressed: buttonsList[index].onPressed,
                child: buttonsList[index].child,
                color: buttonsList[index].color),
          );
        },
      ),
    );
  }
}
