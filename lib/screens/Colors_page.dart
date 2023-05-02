import 'package:flutter/material.dart';

class colorsPage extends StatelessWidget {
  const colorsPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('Colors'),
      ),
    );
  }
}