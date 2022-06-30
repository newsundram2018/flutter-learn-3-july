import 'package:flutter/material.dart';
import 'package:flutter_one/card.dart';

void main() {
  runApp(MaterialApp(
    title: "Experiment App",
    home: Scaffold(
        appBar: AppBar(title: const Text("Hello")),
        body: Column(
          children: [
            CustomCard(
              index: 1,
              onPress: () => {
                print('hello'),
              },
            ),
            CustomCard(
              index: 1,
              onPress: () => {
                print('hello'),
              },
            ),
            CustomCard(
              index: 1,
              onPress: () => {
                print('hello'),
              },
            ),
          ],
        )),
    debugShowCheckedModeBanner: false,
  ));
}
