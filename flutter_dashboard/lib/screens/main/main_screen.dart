import 'package:admin/responsive.dart';
import 'package:flutter/material.dart';

import 'components/side_menu.dart';
import 'dashbord/dashboard_screen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (Responsive.isDesktop(context))
            Expanded(flex: 1, child: SideMenu()),
          Expanded(
            flex: 5,
            child: dashboardScreen(),
          ),
        ],
      )),
    );
  }
}
