import 'package:flutter/material.dart';
import 'package:i_surveil_project/screens/camera_feeds_screen.dart';
import 'package:i_surveil_project/screens/dashboard_screen.dart';
import 'package:i_surveil_project/screens/reports_screen.dart';
import 'package:i_surveil_project/screens/sidepopupMenu.dart';

void main() {
  runApp(AccesslogsApp());
}

class AccesslogsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AccesslogsScreen(),
    );
  }
}

class AccesslogsScreen extends StatefulWidget {
  @override
  _AccesslogsScreenState createState() => _AccesslogsScreenState();
}

class _AccesslogsScreenState extends State<AccesslogsScreen> {
  int _selectedIndex = 0;
  bool _isMuted = false;

  final List<Map<String, dynamic>> accessLogs = [
    {
      'time': 'Entry detected at 7:30am',
      'date': '1/06/24',
      'location': 'Location: 2F, SouthEast',
      'icon': Icons.login, // Example icon
    },
    {
      'time': 'Exit detected at 4:15pm',
      'date': '1/06/24',
      'location': 'Location: 3F, NorthWest',
      'icon': Icons.logout, // Example icon
    },
    {
      'time': 'Entry detected at 8:20am',
      'date': '2/06/24',
      'location': 'Location: 1F, Main Entrance',
      'icon': Icons.login_outlined, // Example icon
    },
    {
      'time': 'Exit detected at 10:45am',
      'date': '2/06/24',
      'location': 'Location: Basement, SouthWest',
      'icon': Icons.logout_outlined, // Example icon
    },
    {
      'time': 'Entry detected at 11:30am',
      'date': '1/06/24',
      'location': 'Location: 2F, North West',
      'icon': Icons.login_outlined, // Example icon
    },
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _toggleMute() {
    setState(() {
      _isMuted = !_isMuted;
    });
  }

  Widget _buildAccessLogItem(String time, String date, String location, IconData icon) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 76.0,
            height: 50.0,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Icon(
              icon,
              color: Colors.black,
              size: 32.0,
            ),
          ),
          SizedBox(width: 16.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                time,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(date),
              Text(location),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
        title: Text(
          'Access Logs',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 32.0,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      drawer: SidepopUp(),
      body: Stack(
        children: [
          ListView.builder(
            itemCount: accessLogs.length,
            itemBuilder: (context, index) {
              return _buildAccessLogItem(
                accessLogs[index]['time']!,
                accessLogs[index]['date']!,
                accessLogs[index]['location']!,
                accessLogs[index]['icon']!, // Pass the icon here
              );
            },
          ),
          Positioned(
            bottom: 10.0,
            right: 10.0,
            child: FloatingActionButton(
              onPressed: () {
                // Implement your action here
              },
              child: Icon(Icons.receipt),
              backgroundColor: Colors.blue,
            ),
          ),
          Positioned(
            top: 16.0,
            right: 16.0,
            child: FloatingActionButton(
              onPressed: _toggleMute,
              child: Icon(_isMuted ? Icons.volume_off : Icons.volume_up),
              backgroundColor: Colors.red,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.videocam_outlined,
                color: _selectedIndex == 0 ? Colors.black : Colors.black38),
            label: 'Cameras',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_outlined,
                color:  Colors.black),
            label: 'Events',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mic_none_rounded,
                color: _selectedIndex == 2 ? Colors.black : Colors.black38),
            label: 'Recordings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings,
                color: _selectedIndex == 3 ? Colors.black : Colors.black38),
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
