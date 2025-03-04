//product_detail_page.dart

import 'package:flutter/material.dart';
import '../models/fruits_data.dart';


class ProductDetailPage extends StatelessWidget {
  final Fruit fruit;

  ProductDetailPage({required this.fruit});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7E6FF),
      appBar: AppBar(
        backgroundColor: Color(0xFFF7E6FF),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_forward, color: Colors.black),
            onPressed: () {},
          ),
        ],
        title: Text(
          fruit.name,
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Raleway', fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Color(0xFFF7E6FF),
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    fruit.name,
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,

                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    fruit.description,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blueGrey,
                      fontFamily: 'MerriweatherSans',
                    ),
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 320),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(35)),
                  ),
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.view_list, color: Colors.redAccent),
                          SizedBox(width: 8),
                          Text(
                            'Nutrition Facts',
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      Card(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: fruit.nutritionFacts.map((fact) {
                              return NutritionFactRow(
                                label: fact.label,
                                value: fact.value,
                                percentage: fact.percentage,
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 0,
                  child: Image.network(
                    fruit.imageUrl,
                    height: 260,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class NutritionFactRow extends StatelessWidget {
  final String label;
  final String value;
  final int percentage;

  NutritionFactRow(
      {required this.label, required this.value, required this.percentage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              label,
              style: TextStyle(fontSize: 11, color: Colors.black,),
            ),
          ),
          SizedBox(width: 10),
          Row(
            children: [
              Text(
                value,
                style: TextStyle(fontSize: 12, color: Colors.black),
              ),
              SizedBox(width: 10),
              Container(
                width: 140,
                height: 10,
                child: LinearProgressIndicator(
                  value: percentage / 100.0,
                  backgroundColor: Colors.grey.shade300,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.redAccent),
                ),
              ),
              SizedBox(width: 4),
              Text(
                '$percentage%',
                style: TextStyle(fontSize: 12
                , color: Colors.black,),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
