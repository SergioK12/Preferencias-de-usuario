import 'package:flutter/material.dart';
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
          children:const [
            Text("Modo Oscuro: "),
            Divider(),
            Text("Nombre: "),
            Divider(),
            Text("Genero: "),
            Divider(),

          ],
        ),
      ),
    );
  }
}