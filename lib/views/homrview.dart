// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:preferencias_de_usuario/shared_preferences/shared_pref.dart';
import 'package:preferencias_de_usuario/widgets/widgets.dart';

class HomeView extends StatelessWidget {
  static const String routeName = 'Home';

  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home"),centerTitle: true,),
      drawer: const SideMenu(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Modo Oscuro: ${Preferencias.getIsDarkMode}"),
            const Divider(),
            Text("Nombre: ${Preferencias.getName}"),
            Divider(),
            Text("Genero: ${Preferencias.getGenero}"),
            Divider(),

          ],
        ),
      ),
    );
  }
}