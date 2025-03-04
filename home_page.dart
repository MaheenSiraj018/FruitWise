import 'package:flutter/material.dart';
import '../widgets/feature_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(height: 50),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/logo.png'), // Your logo
                radius: 30,
              ),
              title: Text(
                'FruitWise',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontFamily: 'Helvetica',
                ),
              ),
              subtitle: Text(
                'Your personal fruit assistant',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontFamily: 'NunitoSans',
                ),
              ),
            ),
            SizedBox(height: 12),
            Center(
              child: Text(
                "Let's explore our features!",
                style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Helvetica',
                    fontWeight: FontWeight.bold,
                    color: Colors.black),

              ),
            ),
            // SizedBox(height:1),
            Expanded(
              child: ListView(
                children: [
                  FeatureCard(
                    icon: Icons.camera_alt,
                    title: 'Detect Fruits',
                    description:
                    'Use our AI to detect various fruits in a meal.',
                    onTap: () {
                      Navigator.pushNamed(context, '/detect_fruits');
                    },
                  ),
                  FeatureCard(
                    icon: Icons.info,
                    title: 'Nutritional Info',
                    description: 'Get nutritional information about fruits.',
                    onTap: () {
                      Navigator.pushNamed(context, '/nutritional_info');
                    },
                  ),
                  FeatureCard(
                    icon: Icons.chat,
                    title: 'Chat about Fruits & Allergies',
                    description:
                    'Chat with our personalized bot about fruits and their allergies.',
                    onTap: () {
                      Navigator.pushNamed(context, '/chat');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
