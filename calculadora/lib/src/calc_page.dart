import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

import 'widget_button.dart';

class CalcPage extends StatefulWidget {
  const CalcPage({super.key});

  @override
  State<CalcPage> createState() => _CalcPageState();
}

class _CalcPageState extends State<CalcPage> {
  String rawOperation = '';
  String resultString = '123123';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clase 3'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Spacer(),
          Text(
            rawOperation,
            style: const TextStyle(fontSize: 32),
          ),
          Text(
            resultString,
            style: const TextStyle(fontSize: 60),
          ),
          const SizedBox(height: 18),
          Table(
            children: [
              TableRow(
                children: [
                  Container(),
                  Container(),
                  WidgetButton.opeButton(
                    textNum: 'AC',
                    myButtonTap: () => _clearOperation(),
                  ),
                  WidgetButton.opeButton(
                    textNum: '⌫',
                    myButtonTap: () => _deleteLastChar(),
                  ),
                ],
              ),
              TableRow(
                children: [
                  WidgetButton.numButton(
                    textNum: '7',
                    myButtonTap: () => _addData('7'),
                  ),
                  WidgetButton.numButton(
                    textNum: '8',
                    myButtonTap: () => _addData('8'),
                  ),
                  WidgetButton.numButton(
                    textNum: '9',
                    myButtonTap: () => _addData('9'),
                  ),
                  WidgetButton.opeButton(
                    textNum: '+',
                    myButtonTap: () => _addOperation('+'),
                  ),
                ],
              ),
              TableRow(
                children: [
                  WidgetButton.numButton(
                    textNum: '4',
                    myButtonTap: () => _addData('4'),
                  ),
                  WidgetButton.numButton(
                    textNum: '5',
                    myButtonTap: () => _addData('5'),
                  ),
                  WidgetButton.numButton(
                    textNum: '6',
                    myButtonTap: () => _addData('6'),
                  ),
                  WidgetButton.opeButton(
                    textNum: '-',
                    myButtonTap: () => _addOperation('-'),
                  ),
                ],
              ),
              TableRow(
                children: [
                  WidgetButton.numButton(
                    textNum: '1',
                    myButtonTap: () => _addData('1'),
                  ),
                  WidgetButton.numButton(
                    textNum: '2',
                    myButtonTap: () => _addData('2'),
                  ),
                  WidgetButton.numButton(
                    textNum: '3',
                    myButtonTap: () => _addData('3'),
                  ),
                  WidgetButton.opeButton(
                    textNum: 'X',
                    myButtonTap: () => _addOperation('X'),
                  ),
                ],
              ),
              TableRow(
                children: [
                  WidgetButton.numButton(
                    textNum: '0',
                    myButtonTap: () => _addData('0'),
                  ),
                  WidgetButton.numButton(
                    textNum: '.',
                    myButtonTap: () => _addOperation('.'),
                  ),
                  WidgetButton.opeButton(
                    textNum: '=',
                    myButtonTap: () => _calculteOpe(),
                  ),
                  WidgetButton.opeButton(
                    textNum: '/',
                    myButtonTap: () => _addOperation('/'),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _addData(String value) {
    rawOperation += value;
    setState(() {});
  }

  void _addOperation(String value) {
    if (rawOperation.isNotEmpty) {
      final lastChar = rawOperation.substring(
        rawOperation.length - 1,
        rawOperation.length,
      );
      final containOpe = ['+', '-', 'X', '/', '.'].contains(lastChar);
      if (!containOpe) {
        rawOperation += value;
        setState(() {});
      }
    }
  }

  void _clearOperation() {
    rawOperation = '';
    setState(() {});
  }

  void _deleteLastChar() {
    if (rawOperation.isNotEmpty) {
      rawOperation = rawOperation.substring(
        0,
        rawOperation.length - 1,
      );
      setState(() {});
    }
  }

  void _calculteOpe() {
    final parser = Parser();
    final expr = parser.parse(rawOperation.replaceAll('X', '*'));
    resultString =
        expr.evaluate(EvaluationType.REAL, ContextModel()).toString();

    setState(() {});
  }
}
