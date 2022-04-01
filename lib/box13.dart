import 'package:flutter/material.dart';
import 'package:lession13_provider_basic_app/feature.dart';
import 'package:provider/provider.dart';

class Box13 extends StatefulWidget {
  const Box13({Key? key}) : super(key: key);

  @override
  State<Box13> createState() => _Box13State();
}

class _Box13State extends State<Box13> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 200,
      margin: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        color: context.watch<Feature>().count%2 == 0 ? Colors.yellow : Colors.purple,
      ),
      child: Center(
        child: Text(
          context.watch<Feature>().count.toString(),
          style: TextStyle(color: Colors.white, fontSize: 20),),
      ),
    );
  }
}
