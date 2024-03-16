import 'package:flutter/material.dart';

class TransportAvailabilityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AIFA Transport Availability'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTransportCard(
              'Truck',
              'Heavy Vehicle',
              '1234567890',
              '10 tons',
              'Rs. 5000 per trip',
              'Rs. 200 per hour',
            ),
            _buildTransportCard(
              'Van',
              'Light Vehicle',
              '9876543210',
              '2 tons',
              'Rs. 2500 per trip',
              'Rs. 100 per hour',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTransportCard(
    String vehicleName,
    String type,
    String contact,
    String weight,
    String cost,
    String waitingCharges,
  ) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 5.0,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Vehicle Name: $vehicleName',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text('Type: $type'),
              SizedBox(height: 8),
              Text('Contact No: $contact'),
              SizedBox(height: 8),
              Text('Weight: $weight'),
              SizedBox(height: 8),
              Text('Cost: $cost'),
              SizedBox(height: 8),
              Text('Waiting Charges: $waitingCharges'),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: TransportAvailabilityPage(),
  ));
}
