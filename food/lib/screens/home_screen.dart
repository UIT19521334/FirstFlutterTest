import 'package:flutter/material.dart';
import 'package:food/models/category.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Category> categories = [
    Category(id: 'today1', name: 'Today1'),
    Category(id: 'today2', name: 'Today2'),
    Category(id: 'today3', name: 'Today3'),
    Category(id: 'today4', name: 'Today4')
  ];

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
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 16 / 9,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                padding: EdgeInsets.all(10),
                children: categories
                    .map(
                      (category) => Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFF1A191D),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.email),
                                    Text('0')
                                  ]
                              ),
                              Text(category.name)
                            ],
                          ),
                        ),
                      ),
                    )
                    .toList(),
              )),
          Container(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.add_circle),
                    label: const Text('New Reminder')),
                TextButton(onPressed: () {}, child: const Text('Add List'))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
