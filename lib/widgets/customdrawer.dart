import 'package:flutter/material.dart';
import 'package:preferencias_de_usuario/views/views.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const _DrawerHEader(),
          ListTile(
            leading: const Icon(Icons.settings_outlined),
            title: const Text("Ajustes"),
            onTap: () {
              Navigator.pushReplacementNamed(context, SettingsView.routeName);
            },
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text("Inicio"),
            onTap: () {
              Navigator.pushReplacementNamed(context, HomeView.routeName);
            },
          ),
          const ListTile(
            leading: Icon(Icons.people_outline),
            title: Text("Personas"),
          )
        ],
      ),
    );
  }
}

class _DrawerHEader extends StatelessWidget {
  const _DrawerHEader();

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/menu-img.jpg'), fit: BoxFit.cover)),
      child: Container(),
    );
  }
}
