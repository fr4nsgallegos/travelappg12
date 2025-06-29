import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WelcomeWidget extends StatelessWidget {
  String title;
  String description;
  String asset;
  Color color;
  bool showButton;

  WelcomeWidget({
    required this.title,
    required this.description,
    required this.asset,
    required this.color,
    this.showButton = false,
  });

  Future<void> setYaInicio() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    _prefs.setBool("yaInicio", true);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      margin: EdgeInsets.symmetric(vertical: 100, horizontal: 8),
      // height: MediaQuery.of(context).size.height - 100,
      // width: MediaQuery.of(context).size.width - 10,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/icons/$asset.png",
            height: MediaQuery.of(context).size.height / 5,
          ),
          SizedBox(height: 20),
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          SizedBox(height: 10),
          Text(description, style: TextStyle(color: Colors.white)),
          showButton
              ? Padding(
                padding: const EdgeInsets.only(top: 40),
                child: ElevatedButton(
                  onPressed: () {
                    setYaInicio();
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => HomePage()),
                    // );
                    // Navigator.pushReplacement(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => HomePage()),
                    // );
                    context.go("/home");
                  },
                  child: Text("Vamos!"),
                ),
              )
              : Container(),
        ],
      ),
    );
  }
}
