import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/home_page.dart';
import 'screens/chat_page.dart';
import 'screens/search_page.dart';
import 'screens/product_detail_page.dart';


void main() {
  runApp(FruitWiseApp());
}

class FruitWiseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FruitWise',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF9B6BB3),
        scaffoldBackgroundColor: Color(0xFFF7E6FF),
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.white, fontFamily: 'NunitoSans'),
          bodyText2: TextStyle(color: Colors.white, fontFamily: 'Helvetica'),
        ),
      ),
      home: SplashScreen(),
      routes: {
        '/home': (context) => HomePage(),
        '/chat': (context) => ChatPage(),
        '/nutritional_info': (context) => SearchPage(),
      },
    );
  }
}
