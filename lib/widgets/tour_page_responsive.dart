import 'package:flutter/material.dart';
import 'package:sun_t_t/widgets/desk_tour_page.dart';

class TourResp extends StatelessWidget {
  const TourResp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraints) {
      if(constraints.maxWidth < 600) {
        return Scaffold();
      }
      else if(constraints.maxWidth <1000) {
        return Scaffold();
      }
      else{
        return DeskTourPage();
      }
    });
  }
}

