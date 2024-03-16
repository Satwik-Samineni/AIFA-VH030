import 'package:flutter/material.dart';

class DronePurchasePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drone Purchase'),
      ),
      body: ListView(
        children: [
          _buildCompanySection(
            'Company A',
            [
              _buildDroneCard(
                'Model 1',
                '₹1000',
                () =>
                    _showSpecifications(context, 'Specifications for Model 1'),
              ),
              _buildDroneCard(
                'Model 2',
                '₹1500',
                () =>
                    _showSpecifications(context, 'Specifications for Model 2'),
              ),
            ],
          ),
          _buildCompanySection(
            'Company B',
            [
              _buildDroneCard(
                'Model X',
                '₹2000',
                () =>
                    _showSpecifications(context, 'Specifications for Model X'),
              ),
              _buildDroneCard(
                'Model Y',
                '₹2500',
                () =>
                    _showSpecifications(context, 'Specifications for Model Y'),
              ),
            ],
          ),
          _buildCompanySection(
            'Company C',
            [
              _buildDroneCard(
                'Model Z',
                '₹3000',
                () =>
                    _showSpecifications(context, 'Specifications for Model Z'),
              ),
              _buildDroneCard(
                'Model W',
                '₹3500',
                () =>
                    _showSpecifications(context, 'Specifications for Model W'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCompanySection(String companyName, List<Widget> drones) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: Text(
            companyName,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: drones),
        ),
      ],
    );
  }

  Widget _buildDroneCard(String droneName, String cost, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 3.0,
          child: SizedBox(
            width: 200,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    droneName,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8.0),
                  Text('Cost: $cost'),
                  SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: onTap,
                    child: Text('Specifications'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _showSpecifications(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Specifications'),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }
}

