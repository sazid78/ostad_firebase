import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:ostad_firebase/match_details_screen.dart';

class MatchListScreen extends StatefulWidget {
  const MatchListScreen({super.key});

  @override
  State<MatchListScreen> createState() => _MatchListScreenState();
}

class _MatchListScreenState extends State<MatchListScreen> {

  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  late CollectionReference matchCollectionRef = firebaseFirestore.collection('match');
  List<match> matchList = [];

  Future<void> getMatchInfo() async{
    final QuerySnapshot result = await firebaseFirestore.collection("match").get();
    print(result.size);
    for(QueryDocumentSnapshot element in result.docs){
      print(element.data());
      print(element.get("team_a"));
    }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getMatchInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Match List"),
      ),
      body: ListView.builder(
        itemCount: 2,
          itemBuilder: (context,index){
        return Card(
          child: ListTile(
            title: Text("Bangladesh vs India"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => MatchDetailsScreen()));
            },
          ),
        );
      })
    );
  }
}

class match{
  late final String team_a,team_b;
  late final int goal_team_a,goal_team_b;

  match(this.team_a,this.team_b,this.goal_team_a,this.goal_team_b);

}
