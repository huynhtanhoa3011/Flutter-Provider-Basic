import 'package:flutter/material.dart';
import 'package:lession13_provider_basic_app/feature.dart';
import 'package:provider/provider.dart';
import 'box11.dart';
import 'box12.dart';
import 'box13.dart';

class Box1 extends StatefulWidget {


  @override
  State<Box1> createState() => _Box1State();
}

class _Box1State extends State<Box1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Box11(),
          Box12(),
          Box13(),
          increaseNumber(),
        ],
      ),
    );
  }

  increaseNumber() {
    return RaisedButton(
      child: Text("Tăng số", style: TextStyle(color: Colors.red, fontSize: 20),),
        onPressed: () {
        context.read<Feature>().increaseCount();
        });
  }
}
