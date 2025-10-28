import 'package:flutter/material.dart';
import 'details_page.dart';

class Product {
  final String name;
  final double price;
  final String description;

  Product(this.name, this.price, this.description);
}

class HomePage extends StatelessWidget {
  final List<Product> products = [
    Product('Laptop HP', 9000, 'Ordinateur portable 16 Go RAM'),
    Product('iPhone 15', 15000, 'Smartphone dernière génération'),
    Product('Casque ', 800, 'Casque sans fil Bluetooth'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Catalogue de produits')),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ListTile(
            title: Text(product.name),
            subtitle: Text('${product.price} MAD'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsPage(product: product),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
