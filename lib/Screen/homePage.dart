import 'package:calendar_timeline/Screen/qrcode.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:calendar_timeline/Screen/searchPage.dart';

import 'package:flutter/material.dart';

import '../Widgets/drawerExtention.dart';
import '../Widgets/likeButton.dart';

class MainScreen extends StatefulWidget {
  final int? index;

  MainScreen({this.index});

  @override
  _MainScreenState createState() => _MainScreenState(index);
}

class _MainScreenState extends State<MainScreen> {
  int? _selectedIndex;
  int _bottomNavIndex = 2;
  bool _isHomeSelected = false;

  _MainScreenState(this._selectedIndex);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('yolo'), automaticallyImplyLeading: _selectedIndex == 1),
      drawer: DrawerExtension(),
      body: getSelectedWidget(),
      bottomNavigationBar: AnimatedBottomNavigationBar(
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
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget getSelectedWidget() {
    var options = _widgetOptions();
    if (_selectedIndex != null && _selectedIndex! < options.length) {
      return options[_selectedIndex!];
    } else {
      // You can return some placeholder widget here when _selectedIndex is out of range
      return Text('Selected index out of range! ${options.length}');
    }
  }
}

List<Widget> _widgetOptions() => [
      //NewsFeedPage(), //futuramente as news
      //SearchUsersPage(user: _currentUser),
      //ListUsersPage(user: _currentUser),
      /*ModifyAttributesPage(
        user: _currentUser,
        onUserUpdate: (updatedUser) {
          setState(() {
            _currentUser = updatedUser;
          });
        },
      ),*/
      SearchPage(),
      HomePage(),
      //ChangePasswordPage(),
      //RemoveAccountPage(),
      //ChatPage(user: _currentUser),
      //ContactsPage(),
      //SettingsPage(),
      //SchedulePage(), //estudante
      //MapPage(username: _currentUser.username),
      Placeholder(), //professor
      Placeholder(), //diretor
    ];

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IconButtonToggleApp(),
      ),
    );
  }
}
