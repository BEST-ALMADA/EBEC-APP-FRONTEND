/*import 'package:flutter/material.dart';

class NavigationBarMain extends StatelessWidget {
  NavigationBarMain();

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      child: Row(
        children: <Widget>[
          Expanded(
            child: InkWell(
                onTap: () {}, // Profile Screen
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.map,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                )),
          ),
          Expanded(
            child: InkWell(
              onTap: () {}, // Likes Screen
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(width: 80), // Takes up 10 logical pixels
          Expanded(
            child: InkWell(
              onTap: () {}, // Search Screen
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.favorite,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {}, // Map Screen
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.person,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}*/

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../Screen/homePage.dart';
import '../Screen/qrcode.dart';
import '../Screen/searchPage.dart';

class NavigationBarMain extends StatefulWidget {
  final int initialIndex;

  NavigationBarMain({this.initialIndex = 0});

  @override
  _NavigationBarMainState createState() => _NavigationBarMainState();
}

class _NavigationBarMainState extends State<NavigationBarMain> {
  bool _isHomeSelected = false;
  late int _bottomNavIndex;

  @override
  void initState() {
    super.initState();
    _bottomNavIndex = widget.initialIndex;
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBottomNavigationBar(
      icons: [
        Icons.map,
        Icons.search,
        _isHomeSelected ? Icons.qr_code : Icons.home,
        Icons.favorite,
        Icons.person,
      ],
      activeIndex: _bottomNavIndex,
      gapLocation: GapLocation.none,
      onTap: (index) {
        setState(() {
          _bottomNavIndex = index;
          _isHomeSelected = _bottomNavIndex == 2;
        });
        _onItemTapped(_bottomNavIndex);
      },
      notchSmoothness: NotchSmoothness.verySmoothEdge,
      leftCornerRadius: 10,
      rightCornerRadius: 10,
      activeColor: Colors.blue,
      inactiveColor: Colors.grey,
    );
  }

  void _onItemTapped(int _bottomNavIndex) {
    switch (_bottomNavIndex) {
      case 0:
        break;
      case 1:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SearchPage()));
        break;
      case 2:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => AppMainPage()));
        break;
      /*case 3:
        return LikeScreen();
      case 4:
        return ProfileScreen();*/
      default:
        break;
    }
  }
}
