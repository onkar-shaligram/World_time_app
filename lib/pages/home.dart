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
    String isDayTime = data['isDayTime']  ? 'day.png' : 'night.png';
    Color fontclr = data['isDayTime'] ? Colors.black : Colors.white;

    return Scaffold(
      // appBar: AppBar(
      //   title: Text('World Time Home'),
      //   centerTitle: true,
      // ),
      body: Container(
        decoration:BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/$isDayTime'),
            fit: BoxFit.cover
            )
          ) ,
        
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, 150, 0, 0),
          child: Center(
            child: Column(
              children: <Widget>[
                FlatButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/chooseLocation');
                  }, 
                  icon: Icon(Icons.location_on, color: fontclr,), 
                  label: Text('Choose Location', 
                  style: TextStyle(color: fontclr),
                  )
                  ),
                  SizedBox(height: 20.0,),
                  Text(data['location'], style: TextStyle(fontSize: 25.0, color: fontclr),),
                  SizedBox(height: 20.0),
                   Text(data['time'], style: TextStyle(fontSize: 55.0, color: fontclr),),
              ],
            ),
          ),
          ),
        
      ),
    );
  }
}