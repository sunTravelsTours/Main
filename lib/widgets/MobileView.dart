import 'package:flutter/material.dart';
import 'package:sun_t_t/widgets/navigation_bar/navigation_bar.dart';
import 'package:sun_t_t/widgets/place.dart';

class MobileView extends StatelessWidget {
  const MobileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              backgroundColor: Colors.transparent,
              floating: true,
              snap: true,
              centerTitle: true,
              title: Text("Mobile View"),
              leading: IconButton(
                onPressed: () {},
                icon: Icon(Icons.phone_android_sharp),
              ),
            ),
          ],
          body: ListView(children: [
            Stack(children: [
              Container(
                child: Image.asset("assets/images/parallax.jpeg"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                    alignment: Alignment.topLeft,
                    height: 200,
                    child: Image.asset("assets/images/make-trip-easy-logo.png"),
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    child: IconButton(
                      color: Colors.white,
                      onPressed: () {  },
                      icon: Icon(Icons.menu,),
                      iconSize: 40,
                    ),
                  )
                ],
              ),
            ]),
            Padding(
                padding: EdgeInsets.only(top: 35, left: 30, right: 30),
                child: Place()),
            Padding(
                padding: EdgeInsets.only(top: 35, left: 30, right: 30),
                child: Place()),
            SizedBox(
              height: 100,
            ),
            Container(
              height: 300,
              color: Colors.black,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(children: [
                SizedBox(height: 30,),
                Text(
                  "Contact Info",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Icon(
                      Icons.phone_android,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10,),
                    Text(
                        "+91 9930027675",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Icon(
                      Icons.phone_android,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10,),
                    Text(
                      "+91 9322516775",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10,),
                    Text(
                      "17, Alankar Bldg, Lallubhai Shamaldas Road,\nAndheri (West), Mumbai 400058",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Icon(
                      Icons.access_time_outlined,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10,),
                    Text(
                      "OPEN Monday to Saturday",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
            ),
          ]),
        )
    );
  }
}
