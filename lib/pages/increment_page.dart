import 'package:flutter/material.dart';
import 'package:assignment_mobile/counter_model.dart';

class IncrementPage extends StatelessWidget {
  final CounterModel model;
  const IncrementPage({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Halaman 2 - Increment')),
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
        onPressed: model.increment,
        icon: const Icon(Icons.add),
        label: const Text('Tambah'),
      ),
    );
  }
}
