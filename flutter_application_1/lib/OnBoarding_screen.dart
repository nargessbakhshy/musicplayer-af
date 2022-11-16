import 'dart:html';

import 'package:afplayer/Home_page.dart';
import 'package:afplayer/intro_screens/intro__screen1.dart';
import 'package:afplayer/intro_screens/intro_screen2.dart';
import 'package:afplayer/intro_screens/intro_screen3.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboardingscreen extends StatefulWidget {
  const Onboardingscreen({Key? key}) : super(key: key);

  @override
  State<Onboardingscreen> createState() => _OnBoardingscreen();
}

class _OnBoardingscreen extends State<Onboardingscreen> {
  PageController _controller = PageController();
  bool onlastpage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onlastpage = (index == 3);
              });
            },
            children: [
              introscreen1(),
              introscreen2(),
              introscreen3(),
            ],
          ),
          Container(
            alignment: Alignment(0, 0.6),
            child: SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: const WormEffect(
                dotColor: Color(0x44ffffff),
                activeDotColor: Color(0XFFFFFFFF),
                dotHeight: 16,
                dotWidth: 16,
                type: WormType.thin,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 80, 40, 0),
            child: Container(
              alignment: Alignment.topRight,
              child: onlastpage
                  ? GestureDetector(
                      onTap: () {
                        _controller.jumpToPage(3);
                      },
                      child: Text(
                        "Skip",
                        style:
                            TextStyle(color: Color(0xffffffff), fontSize: 18),
                      ),
                    )
                  : GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: ((context) {
                          return Homepage();
                        })));
                      },
                      child: Text(
                        "Start",
                        style: TextStyle(
                          color: Color(0xffffffff),
                          fontSize: 18,
                        ),
                      ),
                    ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 20, 80),
            child: Container(
                alignment: Alignment.bottomRight,
                child: onlastpage
                    ? GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                            duration: Duration(microseconds: 500),
                            curve: Curves.easeIn,
                          );
                        },
                        child: Text(
                          "Next",
                          style:
                              TextStyle(color: Color(0xffffffff), fontSize: 18),
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                              duration: Duration(microseconds: 500),
                              curve: Curves.easeIn);
                        },
                        child: Text(
                          "",
                          style:
                              TextStyle(color: Color(0xffffffff), fontSize: 18),
                        ),
                      )),
          )
        ],
      ),
    );
  }
}
