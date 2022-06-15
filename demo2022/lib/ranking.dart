import 'package:flutter/material.dart';

import 'navigation.dart';

class Ranking extends StatefulWidget {
  const Ranking({Key? key}) : super(key: key);

  @override
  State<Ranking> createState() => _RankingState();
}

class _RankingState extends State<Ranking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text('랭킹',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: Image.asset('images/rankingProfile.png'),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 5.0,
            child: Image.asset(
              'images/rankingReal.png',
            ),
          ),
        ],
      ),
      bottomNavigationBar: NaviBarButtons(MediaQuery.of(context).size, context),
    );
  }
}
