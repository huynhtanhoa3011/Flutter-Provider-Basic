import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'feature.dart';
import 'box1.dart';

void main() => runApp(MyHome());

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => Feature()),
    ],
    child: MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            child: Box1(),

          ),
        ),
      ),
    ),
    );
  }
}
