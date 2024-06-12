import 'package:flutter/material.dart';
import 'package:i_surveil_project/screens/access_logs_screen.dart';
import 'package:i_surveil_project/screens/camera_feeds_screen.dart';
import 'package:i_surveil_project/screens/dashboard_screen.dart';
import 'package:i_surveil_project/screens/reports_screen.dart';

void main() {
  runApp(Notifications());
}

class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NotificationsScreen(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class NotificationsScreen extends StatefulWidget {
  @override
  _NotificationsScreenState createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
        actions: [
          IconButton(
            icon: Icon(Icons.settings, color: Colors.black),
            onPressed: () {
              // Define your search action here
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'I-Surveil',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              decoration: BoxDecoration(
                color: Colors.blueGrey[800],
              ),
            ),
            ListTile(
              leading: Icon(Icons.dashboard_outlined),
              title: Text('Dashboard'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DashboardApp()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.camera),
              title: Text('Camera Feeds'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CameraFeedsApp()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.switch_access_shortcut_add),
              title: Text('Access-Logs'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AccesslogsApp()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.restore_page_outlined),
              title: Text('General Reports'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ReportsScreenApp()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.message_sharp),
              title: Text('Notifications'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Notifications()),
                );
              },
            ), ListTile(
              leading: Icon(Icons.videocam_outlined),
              title: Text('Video Feeds'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CameraFeedsApp()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.reduce_capacity),
              title: Text('Red List'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DashboardApp()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.reduce_capacity_sharp),
              title: Text('BlackList'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DashboardApp()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.emergency_outlined),
              title: Text('SOS'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DashboardApp()),
                );
              },
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 0), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildReportColumn('Alerts', true),
                    _buildReportColumn('Events', false),
                  ],
                ),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.all(16.0),
            //   child: Text(
            //     'Customize Reports',
            //     style: TextStyle(
            //       fontSize: 29.0,
            //       fontWeight: FontWeight.bold,
            //     ),
            //   ),
            // ),
            // Container(
            //   padding: const EdgeInsets.symmetric(horizontal: 16.0),
            //   child: Column(
            //     children: [
            //       _buildCustomizeRow('Report Range', 'Last 7 Days'),
            //       _buildCustomizeRowWithIcon('Email Report to:', ''),
            //     ],
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       ElevatedButton(
            //         onPressed: () {
            //           // Define your cancel action here
            //         },
            //         style: ElevatedButton.styleFrom(
            //           foregroundColor: Colors.red, backgroundColor: Colors.white, // Text color
            //           side: BorderSide(color: Colors.red), // Border color
            //         ),
            //         child: Text('Cancel'),
            //       ),
            //       ElevatedButton(
            //         onPressed: () {
            //           // Define your generate report action here
            //         },
            //         style: ElevatedButton.styleFrom(
            //           foregroundColor: Colors.blue, backgroundColor: Colors.white, // Text color
            //           side: BorderSide(color: Colors.blue), // Border color
            //         ),
            //         child: Text('Generate Report'),
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  Widget _buildReportColumn(String text, bool isSelected) {
    return Column(
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: isSelected ? Colors.black : Colors.grey,
          ),
        ),
      ],
    );
  }


}
