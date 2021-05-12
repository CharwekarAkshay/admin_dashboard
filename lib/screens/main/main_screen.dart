import 'package:admin_dashboard/controllers/MenuController.dart';
import 'package:admin_dashboard/responsive.dart';
import 'package:admin_dashboard/screens/dashboard/dashboard_screen.dart';
import 'package:admin_dashboard/screens/main/components/side_menu.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      drawer: SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))
              Expanded(
                // Default flex = 1 which will take 1/6 of screen
                child: SideMenu(),
              ),
            Expanded(
              // Flex = 5 will take 5/6 of screen
              flex: 5,
              child: DashboardScreen(),
            )
          ],
        ),
      ),
    );
  }
}
