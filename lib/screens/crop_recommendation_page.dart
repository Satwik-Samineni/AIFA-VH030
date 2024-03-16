import 'package:flutter/material.dart';

class CropRecommendationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crop Recommendation'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildDropdownField(
              label: 'Season:',
              items: ['Rabhi', 'Kharif', 'Zaid'],
            ),
            SizedBox(height: 16.0),
            _buildDropdownField(
              label: 'Land Type:',
              items: ['Dry', 'Other'],
            ),
            SizedBox(height: 16.0),
            _buildDropdownField(
              label: 'Water Level:',
              items: ['Low', 'Medium', 'High'],
            ),
            SizedBox(height: 24.0),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  
                },
                child: Text('Recommend'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDropdownField({required String label, required List<String> items}) {
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
            underline: SizedBox(), 
            items: items.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (String? newValue) {
              
            },
          ),
        ),
      ],
    );
  }
}
