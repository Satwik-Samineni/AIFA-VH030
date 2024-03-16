import 'package:flutter/material.dart';

class MarketInsightsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Market Insights'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildStateMarketInsights(
              'Tamil Nadu',
              [
                _buildMarketCard(
                  'Rice',
                  'Food Grain',
                  'Rs. 2000',
                  'Rs. 2200',
                ),
                _buildMarketCard(
                  'Cotton',
                  'Cash Crop',
                  'Rs. 4500',
                  'Rs. 4800',
                ),
              ],
            ),
            _buildStateMarketInsights(
              'Karnataka',
              [
                _buildMarketCard(
                  'Maize',
                  'Food Grain',
                  'Rs. 1800',
                  'Rs. 2000',
                ),
                _buildMarketCard(
                  'Sugarcane',
                  'Cash Crop',
                  'Rs. 2500',
                  'Rs. 2800',
                ),
              ],
            ),
            _buildStateMarketInsights(
              'Andhra Pradesh',
              [
                _buildMarketCard(
                  'Wheat',
                  'Food Grain',
                  'Rs. 2200',
                  'Rs. 2400',
                ),
                _buildMarketCard(
                  'Groundnut',
                  'Cash Crop',
                  'Rs. 4000',
                  'Rs. 4200',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStateMarketInsights(String stateName, List<Widget> cards) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            stateName,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: cards,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMarketCard(
    String cropName,
    String category,
    String previousPrice,
    String currentPrice,
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
                'Crop: $cropName',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text('Category: $category'),
              SizedBox(height: 8),
              Text('Previous Price: $previousPrice per quintal'),
              SizedBox(height: 8),
              Text('Current Price: $currentPrice per quintal'),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MarketInsightsPage(),
  ));
}
