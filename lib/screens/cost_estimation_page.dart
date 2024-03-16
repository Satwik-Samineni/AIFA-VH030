import 'package:flutter/material.dart';

class CostEstimationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cost Estimation'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Go back to the previous screen
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildDropdownField(
              label: 'Crop Recommended:',
              items: ['Maize', 'Wheat', 'Other'],
            ),
            SizedBox(height: 16.0),
            _buildDropdownField(
              label: 'Season (Optional):',
              items: ['Rabhi', 'Kharif', 'Zaid', 'Other'],
            ),
            SizedBox(height: 16.0),
            _buildDropdownField(
              label: 'Number of Acres:',
              items: List.generate(10, (index) => (index + 1).toString()),
            ),
            SizedBox(height: 16.0),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Add your logic here for estimating cost
                },
                child: Text('Estimate Cost'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDropdownField(
      {required String label, required List<String> items}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 18.0),
        ),
        SizedBox(height: 8.0),
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(color: Colors.grey),
          ),
          child: DropdownButton<String>(
            isExpanded: true,
            underline: SizedBox(), // Remove default underline
            items: items.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (String? newValue) {
              // Add your logic here for handling dropdown selection
            },
          ),
        ),
      ],
    );
  }
}
