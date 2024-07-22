import 'package:flutter/material.dart';
import 'package:newapp/screens/signup_screen.dart';

import 'login_screen.dart';
import '../widgets/navbar_roots.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(height: 15),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NavBarRoots(),
                    ));
                  },
                  child: Text(
                    "SKIP",
                    style: TextStyle(
                      color: Color(0xFF7165D6),
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50),
              Padding(
                padding: EdgeInsets.all(20),
                child: Image.asset("assets/images/clipart.png"),
              ),
              SizedBox(height: 50),
              Text(
                "Welcome!!!",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  wordSpacing: 2,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "to our app",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Material(
                    color: Color(0xFF7165D6),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ));
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                        child: Text(
                          "Log In",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Material(
                    color: Color(0xFF7165D6),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => SignUpScreen(),
                        ));
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
