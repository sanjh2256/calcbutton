import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
{
  double num1 = 0;
  double num2 = 0;
  double result = 0;

  void _performOperation(String operation) {
    setState(() {
      switch (operation) {
        case 'Add':
          result = num1 + num2;
          break;
        case 'Subtract':
          result = num1 - num2;
          break;
        case 'Multiply':
          result = num1 * num2;
          break;
        case 'Divide':
          if (num2 != 0) {
            result = num1 / num2;
          } else {
            result = 0; // Handle division by zero
          }
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter number 1'),
              onChanged: (value) {
                setState(() {
                  num1 = double.tryParse(value) ?? 0;
                });
              },
            ),
            SizedBox(height: 10.0),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter number 2'),
              onChanged: (value) {
                setState(() {
                  num2 = double.tryParse(value) ?? 0;
                });
              },
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () => _performOperation('Add'),
              child: Text('Add'),
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () => _performOperation('Subtract'),
              child: Text('Subtract'),
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () => _performOperation('Multiply'),
              child: Text('Multiply'),
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () => _performOperation('Divide'),
              child: Text('Divide'),
            ),
            SizedBox(height: 20.0),
            Text(
              'Result: $result',
              style: TextStyle(fontSize: 20.0),
            ),
          ],
        ),
      ),
    );
  }
}


