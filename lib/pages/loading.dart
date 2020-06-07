import 'package:flutter/material.dart';
import 'package:world_time_app/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

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
              'time': instance.time,
              'isDayTime' : instance.isDayTime
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
      backgroundColor: Colors.transparent,
      body: Center(
        child: SpinKitCubeGrid(
            color: Colors.blue,
            size: 80.0,
          ),
      ),
    );
  }
}