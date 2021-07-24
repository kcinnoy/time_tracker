import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Time Tracker'),
        elevation: 2.0,
      ),
      body: _buildContent(),
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.teal,
            child: SizedBox(
              height: 100.00,
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Container(
            color: Colors.tealAccent,
            child: SizedBox(
              height: 100.00,
            ),
          ),
        ],
      ),
    );
  }
}
