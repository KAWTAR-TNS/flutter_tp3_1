import 'package:flutter/material.dart';
import 'home_page.dart';

class DetailsPage extends StatelessWidget {
  final Product product;

  const DetailsPage({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(product.description, style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 20),
            Text(
              'Prix : ${product.price} MAD',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            Center(
              child: ElevatedButton.icon(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back),
                label: const Text('Retour'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
