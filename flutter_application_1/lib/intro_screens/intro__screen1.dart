import 'dart:ui';

import 'package:flutter/material.dart';

class introscreen1 extends StatefulWidget {
  const introscreen1({Key? key}) : super(key: key);
  @override
  _introscreen1 createState() => _introscreen1();
}

class _introscreen1 extends State<introscreen1> {
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
            Color(0xff184e77),
          ],
        )),
        child: Center(
          child: Container(
            child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 130),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 325,
                        width: 200,
                        child: Image(
                            image: AssetImage("assets/images/intro1_bg.png")),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "music player",
                        style: TextStyle(
                          color: Color(0xffffffff),
                          fontFamily: "seguiBB",
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                        child: Text(
                          "ikjfiujufdhhfghfgdjhjfgdklhdgfhp';os",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xffffffff),
                            fontFamily: "seguiL",
                            fontSize: 14,
                          ),
                        ),
                      )
                    ])),
          ),
        ),
      ),
    );
  }
}
