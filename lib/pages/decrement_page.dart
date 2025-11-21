import 'package:flutter/material.dart';
import 'package:assignment_mobile/counter_model.dart';

class DecrementPage extends StatelessWidget {
  final CounterModel model;
  const DecrementPage({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Halaman 3 - Decrement')),
      body: Center(
        child: AnimatedBuilder(
          animation: model,
          builder: (context, _) => Text(
            '${model.value}',
            style: Theme.of(
              context,
            ).textTheme.displayMedium?.copyWith(color: model.color),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: model.decrement,
        icon: const Icon(Icons.remove),
        label: const Text('Kurangi'),
        backgroundColor: Colors.redAccent,
      ),
    );
  }
}
