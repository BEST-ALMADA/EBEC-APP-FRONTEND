import 'package:flutter/material.dart';

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
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.map,
                    color: Colors.blue,
                  ),
                  Text('Map'),
                ],
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {}, // Likes Screen
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.blue,
                  ),
                  Text('Search'),
                ],
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {}, // Search Screen
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.blue,
                  ),
                  Text('Likes'),
                ],
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {}, // Map Screen
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.person,
                    color: Colors.blue,
                  ),
                  Text('Profile'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  setState(Null Function() param0) {}
}
