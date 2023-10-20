import 'package:flutter/material.dart';
import 'package:tugasmobile/screens/home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("images/bg.jpg"),
        fit: BoxFit.cover,
        opacity: 0.7,
      )),
      child: Material(
        color: Colors.transparent,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 65, horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "WELCOME",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  "to our Journey!",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.9),
                    fontSize: 35,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.5,
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  "Life moves pretty fast. If you don't stop and look around for a while, you could miss it",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                    fontSize: 16,
                    letterSpacing: 1.2,
                  ),
                ),
                SizedBox(height: 30),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ));
                  },
                  child: Ink(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black54,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
