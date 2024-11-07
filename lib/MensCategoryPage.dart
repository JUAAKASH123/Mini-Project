import 'package:flutter/material.dart';

class MensCategoryPage extends StatelessWidget {
  const MensCategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Sample product list with images, names, and prices.
    final List<Map<String, String>> products = [
      {
        'image': 'assets/mens/m1.jpg',
        'name': 'Printed Shirt',
        'price': '₹1299.99',
      },
      {
        'image': 'assets/mens/m2.jpg',
        'name': 'RECNSTRCT Shirt',
        'price': '₹2499.99',
      },
      {
        'image': 'assets/mens/m3.webp',
        'name': 'Check Cotton Shirt',
        'price': '₹999.99',
      },
      {
        'image': 'assets/mens/m4.jpg',
        'name': 'Regular Fit Oxford shirt',
        'price': '₹899.99',
      },
      {
        'image': 'assets/mens/m5.webp',
        'name': 'Denim Jeans',
        'price': '₹1499.99',
      },
      {
        'image': 'assets/mens/m6.jpg',
        'name': 'Blue shirt',
        'price': '₹599.99',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Men's Category",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        backgroundColor:
            const Color.fromARGB(255, 194, 58, 215), // Matching color
      ),
      body: Container(
        color: const Color(0xFFF7F7F7), // Background color matching HomePage
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of columns
            crossAxisSpacing: 8.0, // Space between columns
            mainAxisSpacing: 8.0, // Space between rows
            childAspectRatio: 0.75, // Adjust the size of the cards
          ),
          itemCount: products.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                      ),
                      child: Image.asset(
                        products[index]['image']!,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      products[index]['name']!,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      products[index]['price']!,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
