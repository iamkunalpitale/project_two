import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive Counter'),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Counter Value:',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '$_counter',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).accentColor,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (constraints.maxWidth > 300) ...[
                      ElevatedButton(
                        onPressed: _incrementCounter,
                        child: Icon(Icons.add),
                      ),
                      SizedBox(width: 20),
                      ElevatedButton(
                        onPressed: _decrementCounter,
                        child: Icon(Icons.remove),
                      ),
                    ] else ...[
                      Column(
                        children: [
                          ElevatedButton(
                            onPressed: _incrementCounter,
                            child: Icon(Icons.add),
                          ),
                          SizedBox(height: 10),
                          ElevatedButton(
                            onPressed: _decrementCounter,
                            child: Icon(Icons.remove),
                          ),
                        ],
                      ),
                    ],
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}