import 'package:flutter/material.dart';
import 'package:flutter_app_signup/extension/extension_color.dart';

import 'component/cart_view.dart';
import 'component/flat_button.dart';
import 'component/text_input.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
      home: SignUp()));
}

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor.fromHex("#41496e"),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.only(top: 60),
          color: HexColor.fromHex("#41496e"),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Sign Up",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w200),
              ),
              SizedBox(height: 20),
              Text(
                "WHO YOU ARE?",
                style: TextStyle(
                    color: HexColor.fromHex("#7d86ad"),
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                  padding: EdgeInsets.only(left: 50, right: 50, top: 30),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconSection(title: "PARENT", imagePath: "assets/ic-parent.png", colorBg: HexColor.fromHex("#ebe534"),),
                          IconSection(title: "CHILD", imagePath: "assets/ic-kid.png", colorBg: HexColor.fromHex("#eb9934"),),
                          IconSection(title: "TEACHER", imagePath: "assets/ic-teacher.png", colorBg: HexColor.fromHex("#34ebd8"),)
                        ],
                      ),
                      SizedBox(height: 20),
                      InputTexts(icon: Icon(Icons.person), hintText: "Username"),
                      SizedBox(height: 10),
                      InputTexts(icon: Icon(Icons.mail), hintText: "Email"),
                      SizedBox(height: 10),
                      InputTexts(icon: Icon(Icons.lock), hintText: "Password"),
                      SizedBox(height: 10),
                      InputTexts(icon: Icon(Icons.lock), hintText: "Confirm Password"),
                      SizedBox(height: 20),
                      RaisedGradientButton(
                          child: Text(
                            'SIGNUP',
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, letterSpacing: 1),
                          ),
                          gradient: LinearGradient(
                            colors: <Color>[HexColor.fromHex("#de6262"), HexColor.fromHex("#ffb88c")],
                          ),
                          onPressed: (){
                            print('button clicked');
                          }
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an account.",
                            style: TextStyle(
                              color: Colors.white
                            ),
                          ),
                          FlatButton(
                            padding: EdgeInsets.zero,
                            onPressed: null,
                            child: Text(
                              "Login here",
                              style: TextStyle(
                                color: HexColor.fromHex("ffb88c")
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}





