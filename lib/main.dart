import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:i_surveil_project/screens/LoginScreen.dart';
import 'package:i_surveil_project/screens/SignUpScreen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.bottom]);
    return MaterialApp(
      title: 'I-Surveil',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: 'LeonSans'),
      home: SignUpPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

















































// import 'package:flutter/material.dart';
// import 'package:i_surveil_project/screens/dashboard_screen.dart';
//
// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: LoginScreen(),
//     );
//   }
// }
//
// class LoginScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           // Add some spacing from the top
//           // Logo Image
//           Center(
//             child: Image.asset(
//               'assets/isurveillogo2.png', // Ensure this image has a transparent background
//               height: 120.0,
//             ),
//           ),
//           SizedBox(height: 20.0), // Spacing between logo and body
//           // Center Card
//           Expanded(
//             child: Stack(
//               children: [
//                 // Background image
//                 Container(
//                   decoration: BoxDecoration(
//                     image: DecorationImage(
//                       image: AssetImage("assets/i_surveil_bg.PNG"),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//                 // Content
//                 Center(
//                   child: Container(
//                     decoration: BoxDecoration(
//                       color: Colors.white.withOpacity(0.8), // Transparent white background
//                       borderRadius: BorderRadius.circular(16.0),
//                     ),
//                     margin: EdgeInsets.all(16.0),
//                     padding: EdgeInsets.all(16.0),
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       children: <Widget>[
//                         SizedBox(height: 20.0),
//                         TextField(
//                           decoration: InputDecoration(
//                             labelText: 'Username',
//                             labelStyle: TextStyle(color: Colors.indigo),
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(25.0),
//                             ),
//                           ),
//                         ),
//                         SizedBox(height: 20.0),
//                         TextField(
//                           obscureText: true,
//                           decoration: InputDecoration(
//                             labelText: 'Password',
//                             labelStyle: TextStyle(color: Colors.indigo),
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(25.0),
//                             ),
//                           ),
//                         ),
//                         SizedBox(height: 10.0),
//                         Align(
//                           alignment: Alignment.centerRight,
//                           child: TextButton(
//                             onPressed: () {
//                               // Handle forgot password
//                             },
//                             child: Text(
//                               'Forgot password?',
//                               style: TextStyle(color: Colors.indigo),
//                             ),
//                           ),
//                         ),
//                         SizedBox(height: 20.0),
//                         ElevatedButton(
//                           onPressed: () => Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => DashboardScreen(),
//                             ),
//                           ),
//                           child: Padding(
//                             padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 12.0),
//                             child: Text('Log in'),
//                           ),
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.blue, // Background color
//                             foregroundColor: Colors.white, // Text color
//                           ),
//                         ),
//                         SizedBox(height: 20.0),
//                         TextButton(
//                           onPressed: () {
//                             // Handle new user sign up
//                           },
//                           child: Text(
//                             'New user? Sign Up',
//                             style: TextStyle(color: Colors.indigo),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
