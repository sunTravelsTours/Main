import 'package:flutter/material.dart';
import 'package:sun_t_t/widgets/OnHover.dart';

class navigationBar extends StatelessWidget {
  const navigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(8.0)),
        color: Colors.transparent,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              padding: EdgeInsets.only(left: 40,top: 10,bottom: 10),
              child: Image.asset('assets/images/make-trip-easy-logo.png')),
          Row(
            children: [
              OnHover(
                builder: (isHovered) {
                  return Text(
                    "Home",
                    style: TextStyle(fontSize: 20,
                        fontWeight: FontWeight.w200,
                        color: Colors.white
                    ),
                  );
                },
              ),
              SizedBox(
                width: 20.0,
              ),
              OnHover(
                builder: (isHovered) {
                  return Text(
                    "Tours",
                    style: TextStyle(fontSize: 20,
                        fontWeight: FontWeight.w200,
                        color: Colors.white
                    ),
                  );
                },
              ),
              SizedBox(
                width: 20.0,
              ),
              OnHover(
                builder: (isHovered) {
                  return Text(
                    "About Us",
                    style: TextStyle(fontSize: 20,
                        fontWeight: FontWeight.w200,
                        color: Colors.white
                    ),
                  );
                },
              ),
              SizedBox(
                width: 20.0,
              ),
            ],
          )
        ],
      ),
    );
  }
}
