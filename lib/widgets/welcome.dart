import 'dart:html';

import 'package:flutter/material.dart';
import 'package:sun_t_t/widgets/navigation_bar/navigation_bar.dart';


class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.topCenter,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        height: 792,
                        child: Stack(
                            children: [
                              Image(
                                image: AssetImage('assets/images/parallax.jpeg'),
                                fit: BoxFit.cover,
                                width: double.infinity,
                                alignment: Alignment(0,-1),
                              ),
                            ]
                        ),
                      ),
                    ],
                  ),
                ),
          SizedBox(
            height: 100,
          ),
          Column(
            children: [
              navigationBar(),
              Container(
                padding: EdgeInsets.only(top: 50.0),
                child: SelectableText(
                  'The World Awaits You',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: 50,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}