import 'package:flutter/material.dart';
import 'package:myapp/screens/home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          padding: EdgeInsets.only(top: 100, bottom: 40),
          decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              fit: BoxFit.cover,
              opacity: 0.6,
              image: AssetImage("asset/bg.png"),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Coffee Shop",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                    color: Colors.white),
              ),
              Column(children: [
                Text("Feeling low? Take a Sop of Coffee",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                    )),
                SizedBox(height: 80),
                Material(
                    color: Color(0xFFE57734),
                    borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                      splashColor: Colors.black,
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ));
                      },
                      child: Ink(
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                          decoration: BoxDecoration(
                          ),
                          child: Text("Get Started",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                              )),
                        ),
                      )),
                )
              ]),
            ],
          )),
    );
  }
}
