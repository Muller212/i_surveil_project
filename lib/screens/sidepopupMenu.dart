import 'package:flutter/material.dart';
import 'package:i_surveil_project/models/colors.dart';
import 'package:i_surveil_project/screens/access_logs_screen.dart';
import 'package:i_surveil_project/screens/camera_feeds_screen.dart';
import 'package:i_surveil_project/screens/dashboard_screen.dart';
import 'package:i_surveil_project/screens/notifications_screen.dart';
import 'package:i_surveil_project/screens/reports_screen.dart';

void main() {
  runApp(SidepopUp());
}

class SidepopUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('I-Surveil'),
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
                color: colors,
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
                  MaterialPageRoute(builder: (context) => Notifications()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
