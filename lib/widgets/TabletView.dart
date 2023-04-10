import 'package:flutter/material.dart';
import 'package:sun_t_t/widgets/place.dart';

class TabletView extends StatelessWidget {
  const TabletView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          Padding(
              padding: EdgeInsets.only(top: 35,left: 10,right: 10),
              child: Place()
          ),
          Padding(
              padding: EdgeInsets.only(top: 35,left: 10,right: 10),
              child: Place()
          ),
          Padding(
              padding: EdgeInsets.only(top: 35,left: 10,right: 10),
              child: Place()
          ),
          Padding(
              padding: EdgeInsets.only(top: 35,left: 10,right: 10),
              child: Place()
          ),
        ],
      ),
    );
  }
}
