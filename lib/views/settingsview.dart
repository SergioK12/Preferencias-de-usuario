import 'package:flutter/material.dart';
import 'package:preferencias_de_usuario/widgets/widgets.dart';

import '../shared_preferences/shared_pref.dart';

class SettingsView extends StatefulWidget {
  static const String routeName = 'Settings';
  const SettingsView({Key? key}) : super(key: key);

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  bool isDarkMode = false;
  int gender = 1;
  String name = 'Sergio';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('SettingsView'),
        ),
        drawer: const SideMenu(),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text(
                  "Ajustes",
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                ),
                const Divider(),
                SwitchListTile.adaptive(
                    value: Preferencias.getIsDarkMode,
                    title: const Text("Modo odcuro"),
                    onChanged: (value) {
                      Preferencias.setIsdarkmode = value;
                      setState(() {});
                    }),
                const Divider(),
                RadioListTile<int>(
                    value: 1,
                    groupValue: Preferencias.getGenero,
                    title: const Text("Masculino"),
                    onChanged: (value) {
                      Preferencias.setGenero = value ?? 1;
                      setState(() {});
                    }),
                const Divider(),
                RadioListTile<int>(
                    value: 2,
                    groupValue: Preferencias.getGenero,
                    title: const Text("Femenino"),
                    onChanged: (value) {
                      Preferencias.setGenero = value ?? 2;
                      setState(() {});
                    }),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                      initialValue: Preferencias.getName,
                      decoration: const InputDecoration(
                          labelText: 'Nombre',
                          helperText: 'Nombre del usuario'),
                      onChanged: (value) {
                        Preferencias.setName = value;
                        setState(() {});
                      }),
                ),
              ],
            ),
          ),
        ));
  }
}
