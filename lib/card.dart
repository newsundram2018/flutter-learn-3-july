import 'dart:ui';

import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
    required this.index,
    required this.onPress,
  }) : super(key: key);

  final int index;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 200,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
              child: Column(
            children: <Widget>[
              Text('Card $index'),
              TextButton(
                onPressed: onPress,
                child: const Text(
                  'Press',
                  // style: TextStyle(color: Colors.redAccent),
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
