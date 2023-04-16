
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sun_t_t/DesktopView.dart';
import 'package:sun_t_t/responsive.dart';
import 'package:sun_t_t/widgets/MobileView.dart';
import 'package:sun_t_t/widgets/TabletView.dart';
import 'package:sun_t_t/widgets/navigation_bar/navigation_bar.dart';
import 'package:sun_t_t/widgets/places_list.dart';
import 'package:sun_t_t/widgets/src.dart';
import 'package:sun_t_t/widgets/welcome.dart';

import '../../widgets/footer.dart';

class HomeView extends StatefulWidget {
  @override
  State createState() => HomeViewstful();
}


class HomeViewstful extends State<HomeView> {

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:ResponsiveLayout(
          Mobilebody: MobileView(),
          Tabletbody: TabletView(),
          Desktopbody: DesktopView())
    );
  }
}
