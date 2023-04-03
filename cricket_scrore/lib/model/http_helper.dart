// Cricket Api key= 5122fe43-b077-48f3-b035-24087db0e77f

// https://api.cricapi.com/v1/series?apikey=5122fe43-b077-48f3-b035-24087db0e77f&offset=0&search={-------}


import 'package:cricket_score/model/matchInfo.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class HttpHelper{


  final String authority ='api.cricapi.com';
  final String path = 'v1/currentMatches';
  final String apikey = '5122fe43-b077-48f3-b035-24087db0e77f' ;
  // final String apikey = 'e989aebb-098c-4511-ab0c-506b54478154' ;



  //----------------------------Cricket current Function---------------------------
  Future<MatchInfo> getmatchinfo(String mname) async {
    Map <String, dynamic> parameter = {
      'apikey' : apikey,
      'offset': '0',
      'search': mname

    };
    Uri uri = Uri.https(authority, path, parameter);
    http.Response result = await http.get(uri);
    Map<String, dynamic> data = json.decode(result.body);
    MatchInfo cricketData = MatchInfo.fromJson(data);
    print(result.body);
    print(data);
    return cricketData;
  }
}