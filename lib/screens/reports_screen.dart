import 'package:flutter/material.dart';
import 'package:i_surveil_project/screens/access_logs_screen.dart';
import 'package:i_surveil_project/screens/camera_feeds_screen.dart';
import 'package:i_surveil_project/screens/dashboard_screen.dart';
import 'package:i_surveil_project/screens/sidepopupMenu.dart';

void main() {
  runApp(ReportsScreenApp());
}

class ReportsScreenApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ReportsScreenAppScreen(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class ReportsScreenAppScreen extends StatefulWidget {
  @override
  _ReportsScreenAppScreenState createState() => _ReportsScreenAppScreenState();
}

class _ReportsScreenAppScreenState extends State<ReportsScreenAppScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: () {
              // Define your search action here
            },
          ),
        ],
      ),
      drawer: SidepopUp(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Reports',
                style: TextStyle(
                  fontSize: 46.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
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
                    _buildReportColumn('All Reports', true),
                    _buildReportColumn('Video Data', false),
                    _buildReportColumn('Logs', false),
                    _buildReportColumn('Alerts', false),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Customize Reports',
                style: TextStyle(
                  fontSize: 29.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  _buildCustomizeRow('Report Range', 'Last 7 Days'),
                  _buildCustomizeRowWithIcon('Email Report to:', ''),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Define your cancel action here
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.red, backgroundColor: Colors.white, // Text color
                      side: BorderSide(color: Colors.red), // Border color
                    ),
                    child: Text('Cancel'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Define your generate report action here
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.blue, backgroundColor: Colors.white, // Text color
                      side: BorderSide(color: Colors.blue), // Border color
                    ),
                    child: Text('Generate Report'),
                  ),
                ],
              ),
            ),
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

  Widget _buildCustomizeRow(String leftText, String rightText) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            leftText,
            style: TextStyle(fontSize: 16.0),
          ),
          Text(
            rightText,
            style: TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    );
  }

  Widget _buildCustomizeRowWithIcon(String leftText, String rightText) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            leftText,
            style: TextStyle(fontSize: 16.0),
          ),
          Row(
            children: [
              Text(
                rightText,
                style: TextStyle(fontSize: 16.0),
              ),
              IconButton(
                icon: Icon(Icons.arrow_forward),
                onPressed: () {
                  // Define your icon action here
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
