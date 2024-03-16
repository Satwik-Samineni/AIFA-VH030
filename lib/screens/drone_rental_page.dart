import 'package:flutter/material.dart';

class DroneRentalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drone Rental'),
      ),
      body: ListView(
        children: [
          _buildDroneRentalCard(
            'Drone Name: DJI Mavic Air 2',
            'Operator Name: John Doe',
            'Contact: +91 1234567890',
            'Rent Fee Per Hour: ₹500',
          ),
          _buildDroneRentalCard(
            'Drone Name: DJI Phantom 4 Pro',
            'Operator Name: Jane Smith',
            'Contact: +91 9876543210',
            'Rent Fee Per Hour: ₹700',
          ),
        ],
      ),
    );
  }

  Widget _buildDroneRentalCard(
    String droneName,
    String operatorName,
    String contact,
    String rentFeePerHour,
  ) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 3.0,
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
              Text(operatorName),
              SizedBox(height: 8.0),
              Text(contact),
              SizedBox(height: 8.0),
              Text(rentFeePerHour),
              SizedBox(height: 16.0),
              Divider(color: Colors.grey),
              SizedBox(height: 16.0),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    
                  },
                  child: Text('Book Drone'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
