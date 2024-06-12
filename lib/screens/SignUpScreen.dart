import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:i_surveil_project/models/colors.dart';
import 'package:i_surveil_project/screens/LoginScreen.dart';
import 'package:i_surveil_project/screens/dashboard_screen.dart';
import 'package:i_surveil_project/screens/notifications_screen.dart';
import 'package:i_surveil_project/screens/sidepopupMenu.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/i_surveil_bg.PNG'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.transparent,
                  Colors.transparent,
                  Color(0xff161d27).withOpacity(0.9),
                  Color(0xff161d27),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  "I-Surveil",
                  style: TextStyle(
                    color: Colors.white,
                    // fontStyle: FontStyle.italic,
                    fontSize: 55,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 50,
                  margin: EdgeInsets.only(left: 40, right: 40),
                  child: TextField(
                    style: TextStyle(fontSize: 16, color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "Email",
                      hintStyle: TextStyle(color: Colors.grey.shade700),
                      filled: true,
                      fillColor: Color(0xff161d27).withOpacity(0.9),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: colors),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: colors),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 50,
                  margin: EdgeInsets.only(left: 40, right: 40),
                  child: TextField(
                    style: TextStyle(fontSize: 16, color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "Username",
                      hintStyle: TextStyle(color: Colors.grey.shade700),
                      filled: true,
                      fillColor: Color(0xff161d27).withOpacity(0.9),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: colors),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: colors),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 12),
                Container(
                  height: 50,
                  margin: EdgeInsets.only(left: 40, right: 40),
                  child: TextField(
                    obscureText: true,
                    style: TextStyle(fontSize: 16, color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "Enter Phone Number",
                      hintStyle: TextStyle(color: Colors.grey.shade700),
                      filled: true,
                      fillColor: Color(0xff161d27).withOpacity(0.9),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: colors),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: colors),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 50,
                  margin: EdgeInsets.only(left: 40, right: 40),
                  child: TextField(
                    style: TextStyle(fontSize: 16, color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: TextStyle(color: Colors.grey.shade700),
                      filled: true,
                      fillColor: Color(0xff161d27).withOpacity(0.9),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: colors),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: colors),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 12),
                Container(
                  height: 50,
                  margin: EdgeInsets.only(left: 40, right: 40),
                  child: TextField(
                    obscureText: true,
                    style: TextStyle(fontSize: 16, color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "Enter Password Again",
                      hintStyle: TextStyle(color: Colors.grey.shade700),
                      filled: true,
                      fillColor: Color(0xff161d27).withOpacity(0.9),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: colors),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: colors),
                      ),
                    ),
                  ),
                ),
                // SizedBox(height: 12),
                // Container(
                //   height: 50,
                //   width: double.infinity,
                //   margin: EdgeInsets.only(left: 72, right: 72),
                //   // child: ElevatedButton(
                //   //   child: Text(
                //   //     "LOGIN",
                //   //     style: TextStyle(
                //   //       color: Colors.white,
                //   //       fontWeight: FontWeight.bold,
                //   //       fontSize: 16,
                //   //     ),
                //   //   ),
                //   //   onPressed: () {
                //   //     Navigator.push(
                //   //       context,
                //   //       MaterialPageRoute(builder: (context) => DashboardApp()),
                //   //     );
                //   //   },
                //   //   style: ElevatedButton.styleFrom(
                //   //     backgroundColor: colors,
                //   //     shape: RoundedRectangleBorder(
                //   //       borderRadius: BorderRadius.circular(30),
                //   //     ),
                //   //   ),
                //   //
                //   // ),
                // ),
                SizedBox(height: 10),
                Text(
                  "product of I.E.Solutions",
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 15,
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 50,
                  width: double.infinity,
                  margin: EdgeInsets.only(left: 85, right: 85),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => DashboardApp()),
                                );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: colors,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Text(
                      "SIGN UP",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Already have an account!",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(width: 8),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                        print('Login in');
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: colors,  // Use your 'colors' variable or any specific color
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
