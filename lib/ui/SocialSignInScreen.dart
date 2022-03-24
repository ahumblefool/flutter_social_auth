import 'package:flutter/material.dart';
import 'package:flutter_social_auth/social_auth_google.dart';
import 'package:flutter_social_auth/widgets/auth_provider_button.dart';

class SocialSignInScreen extends StatefulWidget {
  @override
  State<SocialSignInScreen> createState() => _SocialSignInScreenState();
}

class _SocialSignInScreenState extends State<SocialSignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Social Auth Demo"),
        centerTitle: true,
        backgroundColor: Colors.blue.shade500,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AuthProviderButton(onPressed: () {
              googleSignIn(context);
            },
            // providerName: "assets/images/ic_google.png",
            buttonColor: Colors.white,
            buttonText: "Sign In",
            buttonTextColor: Colors.blue.shade400,
            height: 50.0,
            ),
          ],
        ),
      ),
    );
  }
}
