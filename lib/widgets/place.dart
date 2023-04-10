import 'package:flutter/material.dart';

class Place extends StatelessWidget {
  const Place({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8),),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 2,
            blurRadius: 5,
          )
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(8),),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/images/desert_safari.jpg",),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10,horizontal: 13),
              child: Text(
                "Desert Safari",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  fontSize: 20,
                  letterSpacing: 1.5,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
