import 'dart:math';

import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key, required this.title, required this.color});
  final String title;
  final Color color;

  @override
  State<MyPage> createState() => _PageState();
}

class _PageState extends State<MyPage> {

  int _dice = 1;

  List<String> _messages = [
    'You are lucky!',
    'You are unlucky...',
    'You are very lucky!',
    'You are very unlucky...',
    'You are extremely lucky!!!',
    'You are extremely unlucky...',
  ];

  void _incrementCounter() {
    setState(() {
      _dice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Center(
          child: Text(widget.title,
          style: TextStyle(
                fontSize: 30,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Theme.of(context).colorScheme.primary,
              widget.color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child:
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${_messages[_dice-1]}',
                  style: TextStyle(
                  fontSize: 30,
                  color: Theme.of(context).colorScheme.onPrimary,
                  ),
              ),
                SizedBox(height: 30),
                Image.asset(
                  'assets/images/dice-$_dice.png',
                  width: 200,
                  height: 200,
                ),
              ],
            ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.autorenew),
      ), 
    );
  }
}