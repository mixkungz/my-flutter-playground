import 'package:flutter/material.dart';

class ProductCardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Product Card Component')),
      body: SafeArea(child: ProductCard()),
    );
  }
}

class ProductCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Image.asset('assets/images/macbook.webp'),
          Row(
            verticalDirection: VerticalDirection.down,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'MacBook Air M4',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('\$99.99'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text('4.5'),
                  Icon(Icons.star, color: Colors.black),
                ],
              ),
              Row(
                children: [
                  Text('1000+'),
                  Icon(Icons.shopping_cart, color: Colors.black),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
