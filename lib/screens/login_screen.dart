// import 'package:flutter/material.dart';
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
//       appBar: AppBar(
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back, color: Colors.white),
//           onPressed: () {
//             // Handle back button press
//           },
//         ),
//         backgroundColor: Colors.transparent,
//         elevation: 8,
//         title: Text(
//           'I-SURVEIL',
//           style: TextStyle(
//             fontSize: 36.0,
//             fontWeight: FontWeight.bold,
//             color: Color(0xFF800080), // Hex color for purple
//           ),
//         ),
//         centerTitle: true,
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           // I-SURVEIL Title
//           // Container(
//           //   padding: EdgeInsets.all(16.0),
//           //   color: Colors.white.withOpacity(0.5), // More transparent white background
//           //   child: Text(
//           //     'I-SURVEIL',
//           //     textAlign: TextAlign.center,
//           //     style: TextStyle(
//           //       fontSize: 36.0,
//           //       fontWeight: FontWeight.bold,
//           //       color: Color(0xFF800080), // Hex color for purple
//           //     ),
//           //   ),
//           // ),
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
//                           onPressed: () {
//                             // Handle login
//                           },
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
