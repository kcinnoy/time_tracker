import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker/app/sign_in/sign_in_button.dart';
import 'package:time_tracker/app/sign_in/social_signin_btn.dart';
import 'package:time_tracker/common_widgets/custom_button.dart';

class SignInPage extends StatelessWidget {
  void _signInAnonymously() {
    FirebaseAuth.instance.signInAnonymously();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Time Tracker'),
        centerTitle: true,
        elevation: 2.0,
      ),
      body: _buildContent(),
      backgroundColor: Colors.grey[200],
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Sign In',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 32.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 48.0,
          ),
          SocialSignInButton(
            leading: Image.asset('images/google-logo.png'),
            text: 'Sign in With Google',
            color: Colors.white,
            onPressed: () {},
          ),
          SizedBox(
            height: 8.0,
          ),
          SocialSignInButton(
            leading: Image.asset('images/facebook-logo.png'),
            text: 'Sign in With Facebook',
            textColor: Colors.white,
            color: Color(0xff334d92),
            onPressed: () {},
          ),
          SizedBox(
            height: 8.0,
          ),
          SignInButton(
            leading: SizedBox(width: 0),
            text: 'Sign in With Email',
            textColor: Colors.white,
            color: Colors.teal[700]!,
            onPressed: () {},
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(
            'Or',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.black87,
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          SignInButton(
            leading: SizedBox(width: 0),
            text: 'Guest',
            textColor: Colors.black87,
            color: Colors.grey[300]!,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
