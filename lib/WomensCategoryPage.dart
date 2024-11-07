import 'package:flutter/material.dart';

class WomensCategoryPage extends StatelessWidget {
  const WomensCategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Sample product list with images, names, and prices.
    final List<Map<String, String>> products = [
      {
        'image': 'assets/Women/w1.jpg',
        'name': 'Kurta',
        'price': '\₹999.99',
      },
      {
        'image': 'assets/Women/w2.jpg',
        'name': ' Anarkali Suit Set',
        'price': '\₹599.99',
      },
      {
        'image': 'assets/Women/w3.webp',
        'name': 'Indigo Pure Cotton Denim Regular Top',
        'price': '\₹1199.99',
      },
      {
        'image': 'assets/Women/w4.jpg',
        'name': ' Handloom Banarasi Saree',
        'price': '\₹1499.99',
      },
      {
        'image': 'assets/Women/w5.jpg',
        'name': 'Red & Black Mandwi Kurta Palazzo with Dupatta',
        'price': '\₹1299.99',
      },
      {
        'image': 'assets/Women/w6.webp',
        'name': 'Beatnik Shimmer Party Wear Women Top',
        'price': '\₹799.99',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Women's Category",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 194, 58, 215),
      ),
      body: Container(
        color: const Color(0xFFF7F7F7),
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
