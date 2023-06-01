import 'package:first_app_flutter/theme.dart';
import 'package:flutter/material.dart';

class DrawerForInfo extends StatelessWidget {
  const DrawerForInfo({
    super.key,
    required GlobalKey<ScaffoldState> scaffoldKey,
  }) : _scaffoldKey = scaffoldKey;

  final GlobalKey<ScaffoldState> _scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: kPrimaryColor,
            ),
            child: Text(
              'Menu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            title: const Text('Opción 1'),
            onTap: () {
              _scaffoldKey.currentState?.openEndDrawer();
            },
          ),
          ListTile(
            title: const Text('Opción 2'),
            onTap: () {
              _scaffoldKey.currentState?.openEndDrawer();
            },
          ),
        ],
      ),
    );
  }
}
