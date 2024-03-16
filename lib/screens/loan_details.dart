import 'package:flutter/material.dart';

class BankPage extends StatelessWidget {
  final List<Bank> banks = [
    Bank(
      name: 'State Bank of India',
      loans: [
        Loan(
          type: 'Agricultural Loan',
          maxAmountPerAcre: 715000,
          interestRate: 8.5,
        ),
        Loan(
          type: 'Equipment Loan',
          maxAmountPerAcre: 357500,
          interestRate: 7.0,
        ),
      ],
    ),
    Bank(
      name: 'ICICI Bank',
      loans: [
        Loan(
          type: 'Crop Loan',
          maxAmountPerAcre: 858000,
          interestRate: 9.0,
        ),
        Loan(
          type: 'Land Purchase Loan',
          maxAmountPerAcre: 1072500,
          interestRate: 8.0,
        ),
      ],
    ),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nearby Banks'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: banks.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      banks[index].name,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Divider(),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: banks[index].loans.length,
                      itemBuilder: (context, i) {
                        final loan = banks[index].loans[i];
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Loan Type: ${loan.type}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                                'Max Loan Amount Per Acre: ₹${loan.maxAmountPerAcre.toStringAsFixed(2)}'),
                            SizedBox(height: 4),
                            Text('Interest Rate: ${loan.interestRate}%'),
                            SizedBox(height: 8),
                            if (i != banks[index].loans.length - 1) Divider(),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class Bank {
  final String name;
  final List<Loan> loans;

  Bank({required this.name, required this.loans});
}

class Loan {
  final String type;
  final double maxAmountPerAcre;
  final double interestRate;

  Loan(
      {required this.type,
      required this.maxAmountPerAcre,
      required this.interestRate});
}
