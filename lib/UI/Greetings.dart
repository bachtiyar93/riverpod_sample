
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final carouselData = Provider<List<String>>((ref) => ['Item 1', 'Item 2', 'Item 3']);

class Greeting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Greeting App'),
      ),
      body: Consumer(
        builder: (context, ref, child) {
          final data = ref.watch(carouselData);
          return ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(data[index]),
              );
            },
          );
        },
      ),
    );
  }
}
