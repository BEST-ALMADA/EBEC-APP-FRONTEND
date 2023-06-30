import 'package:flutter/material.dart';

class DrawerExampleApp extends StatelessWidget implements PreferredSizeWidget {
  DrawerExampleApp();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('yolo'),
      /*debugShowCheckedModeBanner: false,
      home: DrawerExample(),*/
      automaticallyImplyLeading: true,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
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
