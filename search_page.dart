// search_page.dart

import 'package:flutter/material.dart';
import 'product_detail_page.dart';
import '../models/fruits_data.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController _searchController = TextEditingController();
  List<Fruit> _searchResults = [];
  bool _isSearching = false;

  @override
  void initState() {
    super.initState();
    _searchResults = fruitsData; // Initialize with all fruits
  }

  void _searchFruits(String query) {
    final results = fruitsData
        .where(
            (fruit) => fruit.name.toLowerCase().contains(query.toLowerCase()))
        .toList();
    setState(() {
      _searchResults = results;
      _isSearching = true; // Set searching flag to true
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        // title: Text('Search Fruits'),
        title: Text(
          'Search Fruit',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
        ),
        backgroundColor: Color(0xFF9B6BB3),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF9B6BB3), // #9B6BB3
              Color(0xFFF7E6FF), // #F7E6FF
              Color(0xFFEECCFF), // #EECCFF
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin:
              const EdgeInsets.only(top: 10.0), // Added margin to the top
              padding: const EdgeInsets.all(7.0),
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: 'Enter fruit name',
                  hintStyle: TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  prefixIcon: Icon(Icons.search),
                ),
                onChanged: (query) {
                  _searchFruits(query);
                },
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 0.8, // Adjust the ratio as needed
                ),
                itemCount: _searchResults.length,
                itemBuilder: (context, index) {
                  final fruit = _searchResults[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetailPage(fruit: fruit),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(fruit.imageUrl),
                            radius: 40,
                          ),
                          SizedBox(height: 8),
                          Flexible(
                            child: Text(
                              fruit.name,
                              style: TextStyle(
                                color: Colors.purple,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}