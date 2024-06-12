import 'package:flutter/material.dart';
import 'package:i_surveil_project/screens/access_logs_screen.dart';
import 'package:i_surveil_project/screens/dashboard_screen.dart';
import 'package:i_surveil_project/screens/reports_screen.dart';
import 'package:i_surveil_project/screens/sidepopupMenu.dart';

void main() {
  runApp(CameraFeedsApp());
}

class CameraFeedsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CameraFeedsAppScreen(),
    );
  }
}

class CameraFeedsAppScreen extends StatefulWidget {
  @override
  _CameraFeedsAppScreenState createState() => _CameraFeedsAppScreenState();
}

class _CameraFeedsAppScreenState extends State<CameraFeedsAppScreen> {
  int _selectedIndex = 0;

  final List<String> cameraNames = [
    'lobby',
    'Parking Lot',
    'Garage',
    'Exit',
    'Kitchen',
    'Main Entrance'
  ]; // List of camera names

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    if (index == 2) {
      // Navigate to the Alerts screen
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AccesslogsApp()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
        title: Text(
          'Camera Feeds',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontSize: 32.0, // You can adjust the font size as needed
          ),
        ),
        centerTitle: true,
      ),
      drawer: SidepopUp(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: cameraNames.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                  childAspectRatio: 1, // Adjust aspect ratio if necessary
                ),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.cyan,
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.videocam_outlined,
                              size: 50,
                              color: Colors.white,
                            ), // Placeholder for video feed
                          ),
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        cameraNames[index], // Custom names for each container
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey, // Background color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                  onPressed: () {
                    // Add your onPressed code here!
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Full Screen',
                      style: TextStyle(
                        color: Colors.black, // Text color
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: _selectedIndex == 1 ? Colors.black : Colors.black38),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.videocam_outlined, color: Colors.black),
            label: 'Cameras',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications, color: _selectedIndex == 2 ? Colors.black : Colors.black38),
            label: 'Alerts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, color: _selectedIndex == 3 ? Colors.black : Colors.black38),
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
}
