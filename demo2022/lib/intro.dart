import 'dart:ui';
import 'package:demo2022/home.dart';
import 'package:flutter/material.dart';

// 사용자 정보 입력
class Intro extends StatefulWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  final interestsList = ['책', '영화', '카페', '공원'];
  @override
  Widget build(BuildContext context) {
    const EdgeInsets textFieldPadding = EdgeInsets.fromLTRB(5, 5, 5, 5);
    const TextStyle textHeight = TextStyle(
      height: 0.7,
    );
    return Scaffold(
        body:
            ListView(padding: EdgeInsets.symmetric(horizontal: 20), children: [
      SizedBox(
        height: 50,
      ),
      Image.asset('images/TrailerLogo.png', width: 70, fit: BoxFit.scaleDown),
      Image.asset('images/profile.png',
          height: 122, width: 70, fit: BoxFit.fitHeight),
      Padding(
        padding: textFieldPadding,
        child: TextFormField(
            style: textHeight,
            autofocus: true,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              icon: const Icon(Icons.person),
              border: OutlineInputBorder(),
              hintText: '닉네임 입력',
            )),
      ),
      Padding(
        padding: textFieldPadding,
        child: TextFormField(
            style: textHeight,
            autofocus: true,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              icon: const Icon(Icons.people),
              border: OutlineInputBorder(),
              hintText: '나이 입력',
            )),
      ),
      Padding(
        padding: textFieldPadding,
        child: TextFormField(
            style: textHeight,
            autofocus: true,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              icon: const Icon(Icons.transgender),
              border: OutlineInputBorder(),
              hintText: '성별 입력',
            )),
      ),
      Padding(
        padding: textFieldPadding,
        child: TextFormField(
            style: textHeight,
            autofocus: true,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              icon: const Icon(Icons.home),
              border: OutlineInputBorder(),
              hintText: '집 주소 입력',
            )),
      ),
      Padding(
        padding: textFieldPadding,
        child: TextFormField(
            style: textHeight,
            autofocus: true,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              icon: const Icon(Icons.work),
              border: OutlineInputBorder(),
              hintText: '회사/학교 주소 입력',
            )),
      ),
      Padding(
        padding: textFieldPadding,
        child: TextFormField(
            style: textHeight,
            autofocus: true,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              icon: const Icon(Icons.interests),
              border: OutlineInputBorder(),
              hintText: '카테고리 입력',
            )),
      ),
      // Padding(
      //     padding: textFieldPadding,
      //     child: Center(
      //       child: DropdownButton(
      //         value: '영화',
      //         items: interestsList.map(
      //           (value) {
      //             return DropdownMenuItem(
      //               value: value,
      //               child: Text(value),
      //             );
      //           },
      //         ).toList(),
      //         onChanged: (value) {},
      //       ),
      //     )),
      Padding(
        padding: textFieldPadding,
        child: TextFormField(
            style: textHeight,
            autofocus: true,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              icon: const Icon(Icons.directions_walk),
              border: OutlineInputBorder(),
              hintText: '운동 목적',
            )),
      ),
      const Divider(
        color: Colors.grey,
        height: 20,
        thickness: 1,
        indent: 10,
        endIndent: 10,
      ),
      SizedBox(
        child: TextButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue)),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Home()),
            );
          },
          child:
              Text('회원가입', style: TextStyle(fontSize: 18, color: Colors.white)),
        ),
      ),
    ]));
  }
}
