import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class introscreen2 extends StatefulWidget {
  const introscreen2({Key? key}) : super(key: key);
  @override
  State<introscreen2> createState() => _introscreen2();
}

class _introscreen2 extends State<introscreen2> {
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
        child: Center(
            child: Container(
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 130),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(
                height: 185,
                width: 200,
                child: Image(image: AssetImage("assets/images/intro2.png")),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Afghanistan player",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xffffffff),
                  fontFamily: "seguiBB",
                  fontSize: 20,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                child: Text(
                  "ioilujfsuydhuigfdljirltuyrhghjduyhggfh",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xffffffff),
                    fontFamily: "seguiL",
                    fontSize: 14,
                  ),
                ),
              )
            ]),
          ),
        )),
      ),
    );
  }
}
