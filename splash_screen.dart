import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHomePage();
  }

  void _navigateToHomePage() async {
    await Future.delayed(Duration(seconds: 3), () {});
    Navigator.pushReplacementNamed(context, '/home');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFeeccff), // Set the background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logo.png', height: 320),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Color(0xfff9f7fb)),
            ),
          ],
        ),
      ),
    );
  }
}
