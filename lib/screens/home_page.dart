import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'gemini_api.dart'; // Import the gemini_api.dart file
import 'crop_recommendation_page.dart';
import 'cost_estimation_page.dart'; // Import the CostEstimationPage
import 'profile_page.dart'; // Import the ProfilePage
import 'pesticide_page.dart'; // Import the PesticidePage
import 'blog_page.dart'; // Import the BlogPage

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0; // Current selected index for navigation bar

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home Page Content'), // Replace with your home page content
    Text('Blog Content'), // Replace with your blog page content
    Text('Profile Content'), // Replace with your profile page content
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (index == 1) {
        // Navigate to the BlogPage when Blog button is pressed
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BlogPage()),
        );
      } else if (index == 2) {
        // Navigate to the ProfilePage when Profile button is pressed
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
              // Add logic for search
            },
          ),
          IconButton(
            // Button for Gemini Chatbot
            icon: Icon(Icons.chat), // Change the icon to Gemini Chatbot icon
            onPressed: () {
              // Add logic to fetch chatbot response
              fetchChatbotResponse(
                  'Hello'); // Example message to send to chatbot
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
                // Navigate to the Crop Recommendation page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CropRecommendationPage(),
                  ),
                );
              }),
              _buildCurvedRectangleCard('Cost Estimation', () {
                // Navigate to the Cost Estimation page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CostEstimationPage(),
                  ),
                );
              }),
              _buildCurvedRectangleCard('Pesticide', () {
                // Navigate to the PesticidePage when Pesticide card is tapped
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
        selectedItemColor: Colors.blue, // Change selected item color
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
          width: 200, // Adjust the width as needed
          height: 150, // Adjust the height as needed
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
