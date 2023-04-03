import 'dart:convert';
import 'package:cricket_score/bottom_navigation.dart';
import 'package:cricket_score/menu_drawer.dart';
import 'package:cricket_score/model/http_helper.dart';
import 'package:cricket_score/model/matchInfo.dart';
import 'package:flutter/material.dart';

//Api key= 5122fe43-b077-48f3-b035-24087db0e77f

class CricketScreen extends StatefulWidget {
  const CricketScreen({Key? key}) : super(key: key);

  @override
  State<CricketScreen> createState() => _CricketScreenState();
}


class _CricketScreenState extends State<CricketScreen> {
  TextEditingController textController = TextEditingController();
  MatchInfo result3 = MatchInfo('','','','','','','',0,0,0,'');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cricket Score Board'), 
        backgroundColor: Colors.greenAccent, 
        centerTitle: true,),
      
      // drawer: const MenuDrawer(),
      bottomNavigationBar:const BottomNavigation(),

      body: Padding(
        padding: EdgeInsets.all(15),
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                controller: textController,
                decoration: InputDecoration(
                  icon:Icon(Icons.support_agent_sharp),
                  hintText: 'Enter Match Name',
                  suffixIcon: IconButton(
                    icon: Icon(Icons.search),
                    onPressed: getData,
                  ),
                ),
              ),
            ),

            cricketRow('Match Name: ', result3.name),
            cricketRow('Match Type: ', result3.matchType),
            cricketRow('Status: ', result3.status),
            cricketRow('Venue: ', result3.venue),
            cricketRow('Date: ', result3.date),
            cricketRow('Team1: ', result3.team1),
            cricketRow('Team2: ', result3.team2),
            cricketRow('Runs: ', result3.runs.toStringAsFixed(2)),
            cricketRow('Wickets: ', result3.wickets.toStringAsFixed(2)),
            cricketRow('Over: ', result3.overs.toStringAsFixed(2)),
            cricketRow('Innings: ', result3.innings),
          ],
        )
      )

    );
  }


  Future getData() async {
    HttpHelper httpHelper = HttpHelper();

    result3 = await httpHelper.getmatchinfo(textController.text);
    setState(() {
      result3;
      
    });

    print(result3);
  }

  Widget cricketRow(String label, String value) {
    Widget row = Padding(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [
          Expanded(
              flex: 3,
              child: Text(
                label,
                style:
                    TextStyle(fontSize: 20, color: Theme.of(context).hintColor),
              )),
          Expanded(
              flex: 4,
              child: Text(
                value,
                style: TextStyle(
                    fontSize: 20, color: Theme.of(context).shadowColor),
              )),
        ],
      ),
    );
    return row;
  }
}