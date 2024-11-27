import 'package:app1/widgets/counterwidget.dart';
import 'package:flutter/material.dart';

class Homeview extends StatelessWidget{


static String id = "homeview";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(""),),
      body: Notewidget(),
    );
  }

}