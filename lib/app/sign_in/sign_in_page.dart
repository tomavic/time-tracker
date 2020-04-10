import 'package:flutter/material.dart';
import 'package:flutterapp/app/sign_in/signin_button.dart';
import 'package:flutterapp/app/sign_in/social_signin_button.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildContent(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Text('Time Tracker'),
      elevation: 2,
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Sign In',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 48),
          SocialSignInButton(
            assetName: 'images/google-logo.png',
            text: 'Signin with Google',
            textColor: Colors.black,
            color: Colors.white,
            onPressed: () {},
          ),
          SizedBox(height: 8),
          SocialSignInButton(
            assetName: 'images/facebook-logo.png',
            text: 'Signin with Facebook',
            textColor: Colors.white,
            color: Color(0xFF334D92),
            onPressed: () {},
          ),
          SizedBox(height: 8),
          SocialSignInButton(
            assetName: 'images/facebook-logo.png',
            text: 'Signin with Email',
            textColor: Colors.black,
            color: Colors.teal[600],
            onPressed: () {},
          ),
          SizedBox(height: 18),
          Text('OR', style: TextStyle(fontSize: 14, color: Colors.black87), textAlign: TextAlign.center,),
          SizedBox(height: 8),
          SignInButton(
            text: 'Signin as Guest',
            textColor: Colors.black,
            color: Colors.grey[300],
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  void _signInWithGoogle() {
    // TODO: Auth with Google
  }
}
