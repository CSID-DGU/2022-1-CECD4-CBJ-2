import 'package:flutter/material.dart';

import 'navigation.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(),
      appBar: AppBar(
        title: Text('홈',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
        centerTitle: true,
        elevation: 0,
      ),
      body: DefaultTabController(
          initialIndex: 0,
          length: 2,
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
                child: TabBar(
              indicatorColor: Colors.black54,
              indicatorWeight: 4,
              //밑줄 길이
              labelColor: Colors.black,
              unselectedLabelColor: Colors.black54,
              tabs: [
                Tab(text: '일별'),
                Tab(text: '주별'),
              ],
            )),
            Container(
              height: 530, //height of TabBarView
              decoration: BoxDecoration(
                  border:
                      Border(top: BorderSide(color: Colors.grey, width: 0.5))),
              child: TabBarView(
                children: <Widget>[
                  Container(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 110.0,
                        child: Image.asset(
                          'images/todayWalkCount.png',
                        ),
                      ),
                      SizedBox(
                        height: 70,
                      ),
                      Image.asset('images/walkCountReal.png'),
                    ],
                  )),
                  Container(),
                ],
              ),
            ),
          ])),
      bottomNavigationBar: NaviBarButtons(MediaQuery.of(context).size, context),
    ));
  }
}
