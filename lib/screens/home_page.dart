import 'package:flutter/material.dart';
import 'blog_page.dart';
import 'cost_estimation_page.dart';
import 'crop_recommendation_page.dart';
import 'drone_renatl_page.dart';
import 'pesticide_page.dart';
import 'profile_page.dart';
import 'loan_details.dart';
import 'credit_page.dart';
import 'transport_availability_page.dart';
import 'transportation_page.dart';
import 'market_insights_page.dart';
import 'drone_purchase_page.dart'; 

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
            onPressed: () {},
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
              _buildCurvedRectangleCard('Market Insights', () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MarketInsightsPage(),
                  ),
                );
              }),
            ]),
            _buildSector('Bank Sector', [
              _buildCurvedRectangleCard('Loan and Interest Details', () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BankPage(),
                  ),
                );
              }),
              _buildCurvedRectangleCard('Credit By AIFA', () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CreditPage(),
                  ),
                );
              }),
            ]),
            _buildSector('Transportation Sector', [
              _buildCurvedRectangleCard('Transport Details', () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TransportationPage(),
                  ),
                );
              }),
              _buildCurvedRectangleCard('AIFA Transport Availability', () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TransportAvailabilityPage(),
                  ),
                );
              }),
            ]),
            _buildSector('Drone Sector', [
              _buildCurvedRectangleCard('Drone Rental ', () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DroneRentalPage(),
                  ),
                );
              }),
              _buildCurvedRectangleCard('Drone Purchase ', () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        DronePurchasePage(), // Redirect to DronePurchasePage
                  ),
                );
              }),
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
