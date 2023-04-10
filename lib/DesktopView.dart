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
          // PlacesList(),
          SizedBox(height: 200,),
          Footer(),
        ],
      ),
    );
  }
}
