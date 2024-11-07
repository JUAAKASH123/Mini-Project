import 'package:flutter/material.dart';

class TshirtPage extends StatefulWidget {
  const TshirtPage({super.key});

  @override
  _TshirtPageState createState() => _TshirtPageState();
}

class _TshirtPageState extends State<TshirtPage> {
  String? _selectedSize;
  String? _selectedColor = 'Blue';
  int _quantity = 1;

  final List<String> _colors = ['Red', 'Green', 'Blue'];
  final String _productName = 'Stylish T-Shirt';
  final String _price = '₹499.99'; // Rupee symbol used here
  final String _imageUrl =
      'assets/Images/tshirt.png.png'; // Update with your image path
  final String _description =
      'This stylish T-shirt is made of 100% cotton and provides all-day comfort. Perfect for casual outings or lounging at home.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('T-Shirt'),
        backgroundColor:
            const Color.fromARGB(255, 194, 58, 215), // Updated color
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    _imageUrl,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                _productName,
                style:
                    const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(
                'Price: $_price', // Rupee symbol in use
                style: const TextStyle(fontSize: 20, color: Colors.green),
              ),
              const SizedBox(height: 10),
              Text(
                'Description:',
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              Text(
                _description,
                style: const TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {
                  // Handle virtual try logic
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content:
                          Text('Virtual Try feature is not implemented yet.'),
                    ),
                  );
                },
                icon: const Icon(Icons.camera_alt, color: Colors.black),
                label: const Text('Virtual Try',
                    style: TextStyle(color: Colors.black)),
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      const Color.fromARGB(255, 194, 58, 215), // Updated color
                  padding: const EdgeInsets.symmetric(vertical: 12),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Select Color:',
                style: TextStyle(fontSize: 18),
              ),
              DropdownButton<String>(
                value: _selectedColor,
                items: _colors.map<DropdownMenuItem<String>>((String color) {
                  return DropdownMenuItem<String>(
                    value: color,
                    child: Text(color),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedColor = newValue;
                  });
                },
                hint: const Text('Choose Color'),
              ),
              const SizedBox(height: 20),
              const Text(
                'Select Size:',
                style: TextStyle(fontSize: 18),
              ),
              DropdownButton<String>(
                value: _selectedSize,
                items: <String>['S', 'M', 'L', 'XL']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedSize = newValue;
                  });
                },
                hint: const Text('Choose Size'),
              ),
              const SizedBox(height: 20),
              const Text(
                'Select Quantity:',
                style: TextStyle(fontSize: 18),
              ),
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.remove, color: Colors.black),
                    onPressed: () {
                      setState(() {
                        if (_quantity > 1) _quantity--;
                      });
                    },
                  ),
                  Text('$_quantity', style: const TextStyle(fontSize: 20)),
                  IconButton(
                    icon: const Icon(Icons.add, color: Colors.black),
                    onPressed: () {
                      setState(() {
                        _quantity++;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle add to cart logic
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Added to Cart!'),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(
                            255, 194, 58, 215), // Updated color
                        padding: const EdgeInsets.symmetric(vertical: 12),
                      ),
                      child: const Center(
                        child: Text(
                          'Add to Cart',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle purchase logic
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text('Purchase Successful'),
                            content: Text(
                                'You bought $_quantity $_productName(s) of size $_selectedSize and color $_selectedColor.'),
                            actions: <Widget>[
                              TextButton(
                                child: const Text('OK'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(
                            255, 194, 58, 215), // Updated color
                        padding: const EdgeInsets.symmetric(vertical: 12),
                      ),
                      child: const Center(
                        child: Text(
                          'Buy Now',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
