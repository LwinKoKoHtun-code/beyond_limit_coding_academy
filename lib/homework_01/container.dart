import 'package:flutter/material.dart';
import 'dart:math';

class MyContainer extends StatefulWidget {
  const MyContainer({super.key});

  @override
  State<MyContainer> createState() => _MyContainerState();
}

class _MyContainerState extends State<MyContainer> {
  int randomValue = 0;
  String? evenOrOdd;

  Widget createContainer({
    required Widget child,
    BoxShape? shape,
  }) {
    return Container(
      width: 250,
      height: 250,
      decoration: BoxDecoration(
        color: Colors.black,
        shape: shape ?? BoxShape.rectangle,
      ),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Container Event Example'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              randomValue = Random().nextInt(100);
              evenOrOdd = randomValue % 2 == 0 ? 'even' : 'odd';
            });
          },
          child: const Text('Click'),
        ),
        body: Center(
          child: createContainer(
            shape: evenOrOdd == 'even' ? BoxShape.circle : BoxShape.rectangle,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '$randomValue ',
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'is $evenOrOdd number.',
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
