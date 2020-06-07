import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  
    String time;
    String url;
    String flag;
    String location;
    bool isDayTime;

    WorldTime({this.location, this.flag, this.url});

  
     Future<void> getTime() async {

try {

    // make the request
    Response response = await get('http://worldtimeapi.org/api/timezone/$url');
    Map data = jsonDecode(response.body);

    // get properties from json   +05:30
    String datetime = data['datetime'];
    String offset1 = data['utc_offset'].substring(1,3);
    String offset2 = data['utc_offset'].substring(4,6);

    // create DateTime object
    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset1), minutes: int.parse(offset2)));

    //print(now);

    // set the time property
    time = DateFormat.jm().format(now);
    isDayTime = now.hour>3 && now.hour<6 ? true : false;

  }
   catch (e) {
    print('ERROR : $e');
    time = 'Data not found';
  }

  
   
     }
}