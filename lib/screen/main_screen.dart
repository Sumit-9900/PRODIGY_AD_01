import 'package:calculator_1/main_logic.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final MainLogic logic = MainLogic();
  void onButtonClick(String value) {
    setState(() {
      logic.onButtonClick(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    logic.input,
                    maxLines: 1,
                    style: const TextStyle(
                      fontSize: 38.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    logic.output,
                    maxLines: 1,
                    style: const TextStyle(
                      fontSize: 24.0,
                      color: Color.fromARGB(180, 255, 255, 255),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Divider(),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buttons(
                        text: 'AC',
                        color: Colors.orange,
                      ),
                      buttons(
                        text: '<',
                        color: Colors.orange,
                      ),
                      buttons(
                        text: '%',
                        color: Colors.orange,
                      ),
                      buttons(
                        text: '/',
                        color: Colors.orange,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buttons(text: '7'),
                      buttons(text: '8'),
                      buttons(text: '9'),
                      buttons(
                        text: 'x',
                        color: Colors.orange,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buttons(text: '4'),
                      buttons(text: '5'),
                      buttons(text: '6'),
                      buttons(
                        text: '-',
                        color: Colors.orange,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buttons(text: '1'),
                      buttons(text: '2'),
                      buttons(text: '3'),
                      buttons(
                        text: '+',
                        color: Colors.orange,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buttons(text: '00'),
                      buttons(text: '0'),
                      buttons(text: '.'),
                      buttons(
                        text: '=',
                        color: Colors.orange,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buttons({
    text,
    color = Colors.white,
  }) {
    return TextButton(
      onPressed: () {
        onButtonClick(text);
      },
      style: TextButton.styleFrom(
        foregroundColor: color,
        textStyle: const TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 28.0,
        ),
      ),
      child: Text(text),
    );
  }
}
