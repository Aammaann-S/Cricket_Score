class MatchInfo {
  String id = '';
  String name = '';
  String matchType = '';
  String status = '';
  String venue = '';
  String date = '';

  String team1 = '';
  String team2 = '';

  int runs = 0;
  int wickets = 0;
  int overs = 0;
  String innings = '';

  MatchInfo(this.name, this.matchType, this.status, this.venue, this.date, this.team1,
      this.team2, this.runs, this.wickets, this.overs, this.innings);

  MatchInfo.fromJson(Map<String, dynamic> cricketData) {
    id = cricketData['data'][0]['id'];
    name = cricketData['data'][0]['name'];
    matchType = cricketData['data'][0]['matchType'] ?? '';
    status = cricketData['data'][0]['status'] ?? '';
    venue = cricketData['data'][0]['venue'] ?? '';
    date = cricketData['data'][0]['date'] ?? '';
    team1 = cricketData['data'][0]['teams'][0] ?? '';
    team2 = cricketData['data'][0]['teams'][1] ?? '';
    runs = cricketData['data'][0]['score'][0]['r'] ?? 0;
    wickets = cricketData['data'][0]['score'][0]['w'] ?? 0;
    overs = cricketData['data'][0]['score'][0]['o'] ?? 0;
    innings = cricketData['data'][0]['score'][0]['inning'] ?? '';
    
  }
}
