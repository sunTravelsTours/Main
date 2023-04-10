import 'package:flutter/material.dart';
import 'package:sun_t_t/widgets/place.dart';

class PlacesList extends StatelessWidget {
  const PlacesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 300,
        margin: EdgeInsets.only(left: 50, right: 50,bottom: 50),
        child: Row(
          children: [
            Place(),
            SizedBox(
              width: 40,
            ),
            Place(),
            SizedBox(
              width: 40,
            ),
            Place(),
          ],
        ),
      ),
    );
  }
}
