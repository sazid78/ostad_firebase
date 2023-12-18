import 'package:flutter/material.dart';

class MatchDetailsScreen extends StatefulWidget {
  const MatchDetailsScreen({super.key});

  @override
  State<MatchDetailsScreen> createState() => _MatchDetailsScreenState();
}

class _MatchDetailsScreenState extends State<MatchDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Match Details"),
      ),
      body: ListView(
        children: [
          Card(
              child: Column(
                children: [
                  Text("Bangladesh vs India"),
                  Text("3-1"),
                  Text("Time:37.67"),
                  Text("Total Time: 90.00")
                ],
              )
          ),
        ],
      )
    );
  }
}
