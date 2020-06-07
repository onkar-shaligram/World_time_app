import 'package:flutter/material.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
 
 }

class _HomeState extends State<Home> {

Map data = {};

@override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    data = ModalRoute.of(context).settings.arguments;
    print(data);

    return Scaffold(
      appBar: AppBar(
        title: Text('World Time Home'),
        centerTitle: true,
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, 150, 0, 0),
          child: Center(
            child: Column(
              children: <Widget>[
                FlatButton.icon(
                  onPressed: () {
                    //TODO
                  }, 
                  icon: Icon(Icons.location_on), 
                  label: Text('Choose Location')),
                  SizedBox(height: 20.0,),
                  Text(data['location'], style: TextStyle(fontSize: 25.0),),
                  SizedBox(height: 20.0),
                   Text(data['time'], style: TextStyle(fontSize: 55.0),),
              ],
            ),
          ),
          ),
        
      ),
    );
  }
}