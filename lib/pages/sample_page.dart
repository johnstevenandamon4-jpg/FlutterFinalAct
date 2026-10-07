// import 'package:flutter/material.dart';

// class SamplePage extends StatelessWidget {
//   const SamplePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Icon(Icons.article, size:80
//           ),

//           SizedBox(height: 20),
//           Text('Sample Page', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold
//           ),
//           ),
//         ]
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class SamplePage extends StatefulWidget {
  const SamplePage({super.key});

  @override
  State<SamplePage> createState() => _SamplePageState();
}

class _SamplePageState extends State<SamplePage> {
  // List of items
  final List<String> items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
  ];

  // Delete an item from the list
  void deleteItem(int index) {
    setState(() {
      items.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Card(
          margin: const EdgeInsets.only(bottom: 12),
          child: ListTile(
            leading: const Icon(
              Icons.article,
              size: 40,
            ),

            title: Text(
              items[index],
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            trailing: ElevatedButton.icon(
              onPressed: () {
                deleteItem(index);
              },
              icon: const Icon(Icons.delete),
              label: const Text('Delete'),
            ),
          ),
        );
      },
    );
  }
}