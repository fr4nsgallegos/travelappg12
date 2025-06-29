import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travelappg12/pages/home_page.dart';
import 'package:travelappg12/pages/welcome_page.dart';

class InitPage extends StatefulWidget {
  @override
  State<InitPage> createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  bool showWelcome = true;

  Future<void> getYaInicio() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    // showWelcome = _prefs.getBool("yaInicio") ?? true;
    if (_prefs.getBool("yaInicio") == true) {
      showWelcome = false;
      setState(() {});
    } else {
      showWelcome = true;
      setState(() {});
    }
  }

  @override
  void initState() {
    getYaInicio();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return showWelcome ? WelcomePage() : HomePage();
  }
}
