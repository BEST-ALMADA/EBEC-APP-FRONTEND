import 'package:flutter/material.dart';

class DrawerExtension extends StatefulWidget {
  const DrawerExtension({super.key});

  @override
  State<DrawerExtension> createState() => _DrawerExtensionState();
}

class _DrawerExtensionState extends State<DrawerExtension> {
  void _closeDrawer() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Drawer Header'),
          ),
          Material(
              color: Colors.yellow,
              child: ListTile(
                title: const Text(
                  'BEST COURSE',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
                leading: IgnorePointer(
                  ignoring: true,
                  child: Opacity(
                    opacity: 0.5, // Adjust the opacity as needed
                    child: Icon(Icons.lock),
                  ),
                ),
              )),
          ListTile(
            title: const Text('TRAP'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
        ],
      ),
      // Enableling opening the drawer with a swipe gesture.
    );
  }
}
