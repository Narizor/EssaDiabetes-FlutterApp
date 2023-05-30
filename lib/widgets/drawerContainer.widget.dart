import 'package:first_app_flutter/theme.dart';
import 'package:flutter/material.dart';

class DrawerContainer extends StatelessWidget {
  const DrawerContainer({
    super.key,
  });

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
              // Acción al hacer clic en la opción 1 del drawer
            },
          ),
          ListTile(
            title: const Text('Opción 2'),
            onTap: () {
              // Acción al hacer clic en la opción 2 del drawer
            },
          ),
          // Agrega más ListTile según tus necesidades
        ],
      ),
    );
  }
}
