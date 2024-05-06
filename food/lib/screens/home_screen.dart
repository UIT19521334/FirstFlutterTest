import 'package:flutter/material.dart';
import 'package:food/screens/home/category_collection.dart';
import 'package:food/screens/home/footer.dart';
import 'package:food/screens/home/grid_view_item.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final categoryCollection = CategoryCollection();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
              onPressed: () {},
              child: const Text(
                'Edit',
                style: TextStyle(color: Colors.red),
              )),
        ],
      ),
      body: Column(
        children: [
          Expanded(
              flex: 1,
              child: GridViewItems(categoryCollection: categoryCollection)),
          const Footer(),
        ],
      ),
    );
  }
}
