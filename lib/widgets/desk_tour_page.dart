import 'package:flutter/material.dart';

class DeskTourPage extends StatelessWidget {
  const DeskTourPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(
      builder: (context, constraints) {
        return ListView(children: [
          Stack(
            children: [
              Container(
                  color: Colors.black26.withOpacity(0.5),
                  child: Image(
                    image: AssetImage("images/woman_desert.jpeg"),
                    fit: BoxFit.cover,
                    width: double.infinity,
                  )),
              Positioned(
                child: Image.asset("assets/images/make-trip-easy-logo.png"),
                left: 20,
                top: 10,
                height: 120,
                width: 200,
              ),
              Positioned(
                child: Text(
                  "Incredible Dubai",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                ),
                top: constraints.maxWidth/3,
                left: constraints.maxWidth/13,
              )
            ],
          ),
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
          )
        ]);
      },
    ));
  }
}
