import 'package:demo2022/home.dart';
import 'package:demo2022/ranking.dart';
import 'package:flutter/material.dart';

Widget NaviBarButtons(Size size, BuildContext context) {
  return Container(
      color: Colors.white10,
      height: 80,
      child: Column(children: [
        const Divider(
          color: Colors.grey,
          thickness: 1,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <
            Widget>[
          Padding(
            padding: EdgeInsets.all(0),
            child: TextButton(
              child: Column(children: [
                Icon(Icons.home_outlined, color: Colors.grey),
                SizedBox(height: 2),
                Text('홈', style: TextStyle(fontSize: 12, color: Colors.grey)),
              ]),
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: TextButton(
              child: Column(children: [
                Icon(Icons.wine_bar, color: Colors.grey),
                SizedBox(height: 2),
                Text('랭킹', style: TextStyle(fontSize: 12, color: Colors.grey)),
              ]),
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Ranking()));
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: TextButton(
              child: Column(children: [
                Icon(Icons.location_on_outlined, color: Colors.grey),
                SizedBox(height: 2),
                Text('추천', style: TextStyle(fontSize: 12, color: Colors.grey)),
              ]),
              onPressed: () {
                // Navigator.pop(context);
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => Recommendation()));
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: TextButton(
              child: Column(children: [
                Icon(Icons.person_outline, color: Colors.grey),
                SizedBox(height: 2),
                Text('마이페이지',
                    style: TextStyle(fontSize: 12, color: Colors.grey)),
              ]),
              onPressed: () {
                // Navigator.pop(context);
                // Navigator.push(
                //     context, MaterialPageRoute(builder: (context) => MyPage()));
              },
            ),
          ),
        ])
      ]));
}
