import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Location'),
        centerTitle: true,
        elevation: 10.0,
      ),
      body: Container(
        child: FlatButton.icon(
          onPressed: () {
             Navigator.pushNamed(context, '/loading');
          }, 
          icon: Icon(Icons.assessment), 
          label: Text('Loading')),
      ),
    );
  }
}