import 'dart:js';

import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:sun_t_t/DesktopView.dart';
import 'package:sun_t_t/views/home/home_view.dart';
import 'package:sun_t_t/widgets/desk_tour_page.dart';
import 'package:sun_t_t/widgets/tour_page_responsive.dart';

class MyAppRouter {

  GoRouter router = GoRouter(
    routes: [
      GoRoute(
          name: "home",
          path: "/",
          pageBuilder: (context,state) {
            return MaterialPage(child: HomeView());
          }
      ),
      GoRoute(
          name: "tourpage",
          path: "/tourpage",
          pageBuilder: (context,state) {
            return MaterialPage(child: TourResp());
          }
      ),
    ]
  );
}