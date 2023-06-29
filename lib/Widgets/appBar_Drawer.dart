import 'package:flutter/material.dart';

/// Flutter code sample for [Scaffold.drawer].

class DrawerExampleApp extends StatelessWidget {
  const DrawerExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DrawerExample(),
    );
  }
}

class DrawerExample extends StatefulWidget {
  const DrawerExample({super.key});

  @override
  State<DrawerExample> createState() => _DrawerExampleState();
}

class _DrawerExampleState extends State<DrawerExample> {
  void _closeDrawer() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Drawer Demo')),

      drawer: Drawer(
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
      ),
      // Enableling opening the drawer with a swipe gesture.
      drawerEnableOpenDragGesture: true,
    );
  }
}

// Criar um botão à parte que consegue abrir e fechar o drawer
/*class _DrawerExampleState extends State<DrawerExample> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openDrawer() {
    _scaffoldKey.currentState!.openDrawer();
  }

  void _closeDrawer() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(title: const Text('Drawer Demo')),
      body: Center(
        child: ElevatedButton(
          onPressed: _openDrawer,
          child: const Text('Open Drawer'),
        ),
      ),
      drawer: Drawer(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('This is the Drawer'),
              ElevatedButton(
                onPressed: _closeDrawer,
                child: const Text('Close Drawer'),
              ),
            ],
          ),
        ),
      ),
      // Disable opening the drawer with a swipe gesture.
      drawerEnableOpenDragGesture: false,
    );
  }
}*/
