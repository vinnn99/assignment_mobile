import 'package:flutter/material.dart';
import 'package:assignment_mobile/counter_model.dart';

class HomePage extends StatelessWidget {
  final CounterModel model;
  const HomePage({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Halaman Utama')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Pilih halaman:'),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/increment'),
              child: const Text('Buka Halaman 2 (Increment)'),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/decrement'),
              child: const Text('Buka Halaman 3 (Decrement)'),
            ),
            const SizedBox(height: 24),
            AnimatedBuilder(
              animation: model,
              builder: (context, _) => Text(
                'Nilai saat ini: ${model.value}',
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(color: model.color),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
