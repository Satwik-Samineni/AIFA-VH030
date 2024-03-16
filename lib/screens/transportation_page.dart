import 'package:flutter/material.dart';

class TransportationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transportation Details'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTransportServiceCard(
                name: 'Chennai Transports',
                contact: '+91 9876543210',
                vehicleType: 'Truck',
                weightCapacity: '10 tons',
                cost: '₹500 per trip',
                waitingCharges: '₹100 per hour',
              ),
              SizedBox(height: 16),
              _buildTransportServiceCard(
                name: 'Coimbatore Logistics',
                contact: '+91 8765432109',
                vehicleType: 'Van',
                weightCapacity: '5 tons',
                cost: '₹300 per trip',
                waitingCharges: '₹80 per hour',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTransportServiceCard({
    required String name,
    required String contact,
    required String vehicleType,
    required String weightCapacity,
    required String cost,
    required String waitingCharges,
  }) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Contact: $contact',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[800],
              ),
            ),
            SizedBox(height: 8),
            Divider(),
            SizedBox(height: 8),
            Text(
              'Type of Vehicle: $vehicleType',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 4),
            Text(
              'Weight Capacity: $weightCapacity',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 4),
            Text(
              'Cost: $cost',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 4),
            Text(
              'Waiting Charges: $waitingCharges',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
