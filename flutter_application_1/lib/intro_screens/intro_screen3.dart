import 'package:flutter/material.dart';
import 'package:flutter_application_1/Home_page.dart';

class introscreen3 extends StatefulWidget {
  const introscreen3({Key? key}) : super(key: key);

  @override
  State<introscreen3> createState() => _introscreen3();
}

class _introscreen3 extends State<introscreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color(0xffb5e48c),
              Color(0xff34a0a4),
              Color(0xff1a759f),
              Color(0xff184e77)
            ])),
        child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Homepage();
                  },
                ),
              );
            },
            child: Container(
              height: 100,
              width: double.infinity,
              color: Color(0xffffffff),
              child: Center(
                  child: Text(
                "Get Stared",
                style: TextStyle(
                  color: Color(0xff184e77),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              )),
            ),
          )
        ]),
      ),
    );
  }
}
