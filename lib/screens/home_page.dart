import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'gemini_api.dart'; 
import 'crop_recommendation_page.dart';
import 'cost_estimation_page.dart'; 
import 'profile_page.dart'; 
import 'pesticide_page.dart';
import 'blog_page.dart'; 

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0; 

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home Page Content'),
    Text('Blog Content'), 
    Text('Profile Content'), 
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (index == 1) {
        
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BlogPage()),
        );
      } else if (index == 2) {
        
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProfilePage()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('AIFA'),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              
            },
          ),
          IconButton(
            
            icon: Icon(Icons.chat), 
            onPressed: () {
              
              fetchChatbotResponse(
                  'Hello'); 
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSector('Crop', [
              _buildCurvedRectangleCard('Recommendation', () {
                
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CropRecommendationPage(),
                  ),
                );
              }),
              _buildCurvedRectangleCard('Cost Estimation', () {
                
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CostEstimationPage(),
                  ),
                );
              }),
              _buildCurvedRectangleCard('Pesticide', () {
                
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PesticidePage(),
                  ),
                );
              }),
            ]),
            _buildSector('Bank Sector', [
              _buildCurvedRectangleCard('Loan and Interest Details', () {}),
              _buildCurvedRectangleCard('Credit By AIFA', () {}),
            ]),
            _buildSector('Transportation Sector', [
              _buildCurvedRectangleCard('Transport Details', () {}),
              _buildCurvedRectangleCard('AIFA Transport Availability', () {}),
            ]),
            _buildSector('Drone Sector', [
              _buildCurvedRectangleCard('Drone Rental ', () {}),
              _buildCurvedRectangleCard('Drone Purchase ', () {}),
            ]),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Blog',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue, 
        onTap: _onItemTapped,
      ),
    );
  }

  Widget _buildSector(String heading, List<Widget> cards) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            heading,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: cards,
          ),
        ),
      ],
    );
  }

  Widget _buildCurvedRectangleCard(String title, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        elevation: 5.0,
        child: Container(
          width: 200, 
          height: 150, 
          child: Center(
            child: Text(
              title,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: HomePage(),
  ));
}
