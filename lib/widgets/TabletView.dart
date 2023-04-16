import 'package:flutter/material.dart';
import 'package:sun_t_t/widgets/place.dart';
import 'package:sun_t_t/widgets/places_list.dart';
import 'package:sun_t_t/widgets/src.dart';
import 'package:sun_t_t/widgets/welcome.dart';

import 'footer.dart';

class TabletView extends StatelessWidget {
  const TabletView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constraints) {
        return Scaffold(
            body: ListView(
              children: [
                const Welcome(),
                const SizedBox(
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
                // PlacesList(),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              spreadRadius: 2,
                              blurRadius: 5
                            )
                          ]
                        ),
                        margin: EdgeInsets.only(left: 20, right: 10),
                        width: constraints.maxWidth*9/32,
                        height: constraints.maxWidth/2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Text("Flexi Package",style: TextStyle(color: Colors.white),),
                            Text(
                              "Incredible Dubai",
                              style: TextStyle(
                                fontSize: constraints.maxWidth/35,
                                fontWeight: FontWeight.w800,
                                  color: Colors.black
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(8)),
                                ),
                                child: Image.asset("assets/images/desert_safari.jpg"),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.flight),
                                    Text("data",
                                    style: TextStyle(
                                      fontSize: constraints.maxWidth/60,
                                    ),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Icon(Icons.hotel),
                                    Text("data")
                                  ],
                                ),
                                Column(
                                  children: [
                                    Icon(Icons.nordic_walking),
                                    Text("data")
                                  ],
                                ),
                                Column(
                                  children: [
                                    Icon(Icons.train_outlined),
                                    Text("data")
                                  ],
                                ),
                              ],
                            ),
                            Text(
                              "₹50,000",
                              style: TextStyle(
                                fontSize: constraints.maxWidth/40,
                                fontWeight: FontWeight.bold
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.red,
                        margin: EdgeInsets.only(left: 10, right: 20),
                        width: constraints.maxWidth*9/32,
                          height: constraints.maxWidth/2,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 200,),
                const Footer(),
              ],
            )
        );
      },
    );
  }
}
