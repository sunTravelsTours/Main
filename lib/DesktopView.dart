import 'package:flutter/material.dart';
import 'package:sun_t_t/widgets/footer.dart';
import 'package:sun_t_t/widgets/places_list.dart';
import 'package:sun_t_t/widgets/src.dart';
import 'package:sun_t_t/widgets/welcome.dart';

class DesktopView extends StatelessWidget {
  const DesktopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Welcome(),
          Container(
            height: 300,
            child: Center(
              child: Text(
                "Some of the Tours that we offer:",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          CardView(),
          //why choose us
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Why Choose Us",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Image(
                          image: AssetImage("assets/images/map.png"),
                        ),
                        Text("Handpicked Hotels",style: TextStyle(
                          fontSize: 27,
                          fontWeight: FontWeight.w600,
                        ),)
                      ],
                    ),
                    Column(
                      children: [
                        Image(
                          image: AssetImage("assets/images/globe.png"),
                        ),
                        Text("World Class Service",style: TextStyle(
                          fontSize: 27,
                          fontWeight: FontWeight.w600,
                        ),)
                      ],
                    ),
                    Column(
                      children: [
                        Image(
                          image: AssetImage("assets/images/baloon.png"),
                        ),
                        Text("Best Price Guarantee",style: TextStyle(
                          fontSize: 27,
                          fontWeight: FontWeight.w600,
                        ),)
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 200,),
          Footer(),
        ],
      ),
    );
  }
}
