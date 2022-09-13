import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            contenedor('1'),
            contenedor('2'),
            contenedor('3'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            contenedor('4'),
            contenedor('5'),
            contenedor('6'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            contenedor('7'),
            contenedor('8'),
            contenedor('9'),
          ],
        ),
      ],
    );
  }

  Widget contenedor(String str) {
    return GestureDetector(
      onTap: () {
        print('object');
      },
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(20),
        height: 115,
        width: 115,
        alignment: Alignment.center,
        color: Colors.amber,
        child: Text(
          str,
          style: const TextStyle(fontSize: 80),
        ),
      ),
    );
  }

}
