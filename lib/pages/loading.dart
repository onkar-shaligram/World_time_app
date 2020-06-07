import 'package:flutter/material.dart';
import 'package:world_time_app/services/world_time.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {


  void setupWorldTime() async {
    WorldTime instance = WorldTime(location: 'Pune', flag: '', url: 'Asia/Kolkata');
    await instance.getTime();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
              'location': instance.location,
              'flag': instance.flag,
              'time': instance.time
            });
  }

  @override
  void initState() {
    setupWorldTime();
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Loading'),
        centerTitle: true,
        elevation: 10.0,
      ),
      
      body: Container(
      ),
    );
  }
}