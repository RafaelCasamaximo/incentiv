import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:incentiv_app/pages/home_page.dart';

class SelectionPage extends StatefulWidget {
  const SelectionPage({Key? key}) : super(key: key);

  @override
  State<SelectionPage> createState() => _SelectionPageState();
}

class _SelectionPageState extends State<SelectionPage> {
  var currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: _getPage(currentPage),
        bottomNavigationBar: FancyBottomNavigation(
          circleColor: Colors.white,
          inactiveIconColor: Colors.white,
          barBackgroundColor: Colors.amber,
          activeIconColor: Colors.amber,
          textColor: Colors.white,
          initialSelection: 1,
          tabs: [
            TabData(iconData: Icons.map, title: ""),
            TabData(iconData: Icons.home, title: ""),
            TabData(iconData: Icons.person, title: ""),
            TabData(iconData: Icons.settings, title: "")
          ],
          onTabChangedListener: (position) {
            setState(() {
              currentPage = position;
            });
          },
        ));
  }

  _getPage(int page) {
    switch (page) {
      case 0:
        break;

      case 1:
        return const HomePage();

      case 2:
        break;

      case 3:
        break;
    }
  }
}
