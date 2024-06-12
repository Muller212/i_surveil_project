import 'package:flutter/material.dart';
import 'package:i_surveil_project/models/colors.dart';
import 'package:i_surveil_project/screens/access_logs_screen.dart';
import 'package:i_surveil_project/screens/camera_feeds_screen.dart';
import 'package:i_surveil_project/screens/notifications_screen.dart';
import 'package:i_surveil_project/screens/reports_screen.dart';

void main() {
  runApp(DashboardApp());
}

class DashboardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        // backgroundColor: colors, // Use the color theme here
        title: Text(
          'Dashboard',
          style: TextStyle(
            color: Colors.black, // Adjusted to match the theme
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontSize: 32.0, // You can adjust the font size as needed
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.white), // Adjusted to match the theme
            onPressed: () {},
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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Cameras Online'),
            SizedBox(height: 8),
            Text('12', style: TextStyle(fontSize: 32)),
            SizedBox(height: 8),
            Text('Last 30 Days (-1%)'),
            SizedBox(height: 16),
            Container(
              height: 200,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(child: Text('MAIN ENTRANCE LIVE FEED')), // Replace with actual graph widget
            ),
            SizedBox(height: 16),
            buildCameraContainer('Backyard Camera', 'Online (1080p)'),
            SizedBox(height: 16),
            buildCameraContainer('"Dj" Bay Camera', 'Offline(2hrs ago)'),
            SizedBox(height: 16),
            buildCameraContainer('Liquor counter Camera', 'Online (720p)'),
            SizedBox(height: 16),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Live Feeds'),
                  IconButton(
                    icon: Icon(Icons.videocam_outlined),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CameraFeedsApp()),
                      );
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('System Health'),
                Icon(Icons.favorite_outline_sharp),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: colors, // Use the color theme here
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black), // Adjusted to match the theme
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications, color: Colors.black), // Adjusted to match the theme
            label: 'Alerts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.black), // Adjusted to match the theme
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, color: Colors.black), // Adjusted to match the theme
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black38,
        onTap: _onItemTapped,
      ),
    );
  }

  Widget buildCameraContainer(String cameraName, String status) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white30,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(cameraName),
              Text(status),
            ],
          ),
          Container(
            width: 200,
            height: 90,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(child: Text('Live Feed Placeholder')), // Replace with actual feed widget
          ),
        ],
      ),
    );
  }
}
