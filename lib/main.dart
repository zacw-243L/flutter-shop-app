import 'package:flutter/material.dart';
import '../model/products_repository.dart';
import '../model/product.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Product> selectedProducts = [];

  void _addProductToSelected(Product product) {
    setState(() {
      selectedProducts.add(product);
    });
  }

  double _getTotalPrice() {
    double totalPrice = 0;
    for (Product product in selectedProducts) {
      totalPrice += product.price;
    }
    return totalPrice;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zachary\'s Shop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ScaffoldMessenger(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Zachary\'s Shop',
                style: TextStyle(color: Colors.white)),
            backgroundColor: Colors.blue,
          ),
          body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // number of columns
              crossAxisSpacing: 5, // horizontal spacing between items
              mainAxisSpacing: 5, // vertical spacing between items
              childAspectRatio: 1 / 1, // aspect ratio of each item
            ),
            itemCount: ProductsRepository().allProducts.length,
            itemBuilder: (context, index) {
              final product = ProductsRepository().allProducts[index];
              return Card(
                child: Column(
                  children: [
                    Image.asset(
                        'images/${product.assetName}'), // display product image
                    Align(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Transform.scale(
                            scale: 0.8, // scale down the text
                            child: Column(
                              children: [
                                Text(product.name),
                                Text('\$${product.price}'),
                              ],
                            ),
                          ),
                          Transform.scale(
                            scale: 0.8, // scale down the icon
                            child: IconButton(
                              icon: const Icon(Icons.add_shopping_cart),
                              onPressed: () {
                                _addProductToSelected(product);
                                final snackBar = SnackBar(
                                  content: Text(
                                      '${product.name} is added. Total Qty: ${selectedProducts.length} Total price: \$${_getTotalPrice().toStringAsFixed(2)}'),
                                );
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
