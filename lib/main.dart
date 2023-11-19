import 'package:flutter/material.dart';
import 'package:practice_app/my_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    print("Building MyApp");
    return MaterialApp(
      title: 'Flutter',
      // デザインの設定
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 51, 38, 190)),
        useMaterial3: true,
      ),
      home: const MyPage(title: 'Dice App', color:Color.fromARGB(255, 141, 19, 19)),
    );
  }
}
