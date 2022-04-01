import 'package:flutter/material.dart';
import 'package:lession13_provider_basic_app/feature.dart';
import 'package:provider/provider.dart';

class Box11 extends StatefulWidget {
  const Box11({Key? key}) : super(key: key);

  @override
  State<Box11> createState() => _Box11State();
}

class _Box11State extends State<Box11> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 200,
      margin: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        color: context.watch<Feature>().count%2 == 0 ? Colors.red : Colors.blue,
      ),
      child: Center(
        child: Text(context.watch<Feature>().count.toString(), style: TextStyle(color: Colors.white, fontSize: 20),),
      ),
    );
  }
}
