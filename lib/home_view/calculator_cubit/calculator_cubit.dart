import 'dart:developer';
import 'package:calculator/home_view/calculator_cubit/calculator_states.dart';
import 'package:calculator/home_view/helper/shared_preferences_manager.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorCubit extends Cubit<CalculatorStates> {
  CalculatorCubit() : super(InitialState());

  String lastExpression = '';
  String expression = '';
  final List<String> _operators = ['%', '+', '×', '÷', '-'];
  late bool isDark;

  void setMode(bool mode) {
    isDark = mode;
  }

  void changeMode() {
    isDark = !isDark;
    SharedPreferencesManager.setMode(isDark);
    emit(NewState());
  }

  void clear() {
    expression = '';
    lastExpression = '';
    emit(NewState());
  }

  void add({required String char}) {
    if (expression.isEmpty && char == '0') {
      return;
    }
    if (char == '.' &&
        expression.isNotEmpty &&
        expression[expression.length - 1] == '.') {
      return;
    }
    expression += char;
    lastExpression = '';
    log(expression);
    emit(NewState());
  }

  void addOperator({required String operator}) {
    if (expression.isEmpty) {
      return;
    }
    String lastChar = expression[expression.length - 1];
    for (int i = 0; i < 5; i++) {
      if (lastChar == _operators[i]) {
        return;
      }
    }
    lastExpression = '';
    expression += operator;
    log(expression);
    emit(NewState());
  }

  void deleteLastChar() {
    if (expression.isEmpty) {
      return;
    }
    expression = expression.substring(0, expression.length - 1);
    lastExpression = '';
    log(expression);
    emit(NewState());
  }

  void changeSign() {
    if (expression.isNotEmpty && expression[0] == '-') {
      expression = expression.substring(1);
    } else {
      expression = '-$expression';
    }
    lastExpression = '';
    emit(NewState());
  }

  void getValue() {
    String e = expression.replaceAll('÷', '/');
    e = e.replaceAll('×', '*');

    Parser p = Parser();
    Expression exp = p.parse(e);
    double eval = exp.evaluate(EvaluationType.REAL, ContextModel());

    lastExpression = '$expression=';

    if (eval == eval.floor()) {
      expression = eval.toStringAsFixed(0);
    } else {
      if (eval.toString().length < eval.toStringAsFixed(6).length) {
        expression = eval.toString();
      } else {
        expression = eval.toStringAsFixed(6);
      }
    }
    log(expression);
    emit(NewState());
  }
}
