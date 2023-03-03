import 'package:shared_preferences/shared_preferences.dart';

class Preferencias {
  static late SharedPreferences _prefs;

  static String _name = '';
  static bool _isDarkMode = false;
  static int _genero = 1;

  static Future init() async {
    _prefs = await SharedPreferences.getInstance();
  }
//NOMBRE
  static String get getName {
    return _prefs.getString('name') ?? _name;
  }
  static set setName(String name) {
    _name = name;
    _prefs.setString('name', name);
  }
  //MODO OSCURO  
  static bool get getIsDarkMode {
    return _prefs.getBool('isdarkmode') ?? _isDarkMode;
  }
  static set setIsdarkmode(bool isdakrmode) {
    _isDarkMode = isdakrmode;
    _prefs.setBool('isdarkmode', isdakrmode);
  }
  //GENERO  
  static int get getGenero {
    return _prefs.getInt('genero') ?? _genero;
  }
  static set setGenero(int genero) {
    _genero = genero;
    _prefs.setInt('genero', genero);
  }
}
