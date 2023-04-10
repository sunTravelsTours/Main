import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      color: Colors.black,
      child: Center(
        child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.phone_android_sharp),
                Text(
                  "Contact Us: 9930027675",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            // Text(
            //   "Contact Us: 9930027675",
            //   style: TextStyle(
            //     color: Colors.white,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
