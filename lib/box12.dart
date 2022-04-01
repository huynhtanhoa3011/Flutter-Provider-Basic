import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Box12 extends StatefulWidget {
  const Box12({Key? key}) : super(key: key);

  @override
  State<Box12> createState() => _Box12State();
}

class _Box12State extends State<Box12> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 200,
      margin: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        color: Colors.grey,
      ),
      child: Center(
        child: Text("No Provider", style: TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
      ),
    );
  }
}
