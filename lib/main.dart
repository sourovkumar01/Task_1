import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyForm(),
    );
  }
}

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  String _selectedPurpose = 'Option 1';
  String _selectedPaymentStatus = 'Paid';

  List<String> purposeOptions = ['Option 1', 'Option 2', 'Option 3'];
  List<String> paymentStatusOptions = ['Paid', 'Pending', 'Not Paid'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Create Even',
          )),
      body:SingleChildScrollView(

    child:

      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text(
              'Name',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius:
                  BorderRadius.circular(15.0), // Set the corner radius
                ),
                contentPadding:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 14.0),
                hintText: 'Name of your event ', // Add a hint text
              ),
            ),
            Text(
              'Purpose',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            DropdownButtonFormField(
              value: _selectedPurpose,
              items: purposeOptions
                  .map((String option) {
                return DropdownMenuItem<String>(
                  value: option,
                  child: Text(option),
                );
              })
                  .toList(),
              onChanged: (String? value) {
                setState(() {
                  _selectedPurpose = value!;
                });
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                contentPadding: EdgeInsets.symmetric(
                    vertical: 12.0, horizontal: 16.0),
                hintText: 'Choose purpose',
              ),
            ),

            SizedBox(height: 16.0),

            Text(
              'Payment Status',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            DropdownButtonFormField(
              value: _selectedPaymentStatus,
              items: paymentStatusOptions
                  .map((String option) {
                return DropdownMenuItem<String>(
                  value: option,
                  child: Text(option),
                );
              })
                  .toList(),
              onChanged: (String? value) {
                setState(() {
                  _selectedPaymentStatus = value!;
                });
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                contentPadding: EdgeInsets.symmetric(
                    vertical: 12.0, horizontal: 16.0),
                hintText: 'Choose payment status',
              ),
            ),

            SizedBox(height: 16.0),

            Text(
              'Budget',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),

            SizedBox(height: 8.0),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius:
                  BorderRadius.circular(15.0), // Set the corner radius
                ),
                contentPadding:
                EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                hintText: 'Sate your budget', // Add a hint text
              ),
            ),
            const Text(
              'Per person Expenditure ',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius:
                  BorderRadius.circular(15.0), // Set the corner radius
                ),
                contentPadding:
                EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                hintText: "Per person Expenditure ", // Add a hint text
              ),
            ),
            Text(
              'Office contribute',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 8.0),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius:
                  BorderRadius.circular(15.0), // Set the corner radius
                ),
                contentPadding:
                EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                hintText: 'Set office contribute ', // Add a hint text
              ),
            ),
            Text(
              'Event vanue ',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 8.0),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius:
                  BorderRadius.circular(15.0), // Set the corner radius
                ),
                contentPadding:
                EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                hintText: 'name of your event vanue  ', // Add a hint text
              ),
            ),

            Text(
              'location ',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 8.0),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius:
                  BorderRadius.circular(15.0), // Set the corner radius
                ),
                contentPadding:
                EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                hintText: 'Chose Location ', // Add a hint text
              ),
            ),

            Text(
              'privacy',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 8.0),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius:
                  BorderRadius.circular(15.0), // Set the corner radius
                ),
                contentPadding:
                EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                hintText: 'choose your privacy  ', // Add a hint text
              ),
            ),
            // ... (rest of your form fields)

            SizedBox(height: 16.0),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Handle button press
                },
                child: Text('Create'),
              ),
            ),



          ],
        ),
      ),
      ),
    );
  }
}
