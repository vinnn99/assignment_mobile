import 'package:flutter/material.dart';
import 'package:assignment_mobile/bloc/counter_bloc.dart';

class HomePage extends StatelessWidget {
  final CounterBloc bloc;
  const HomePage({super.key, required this.bloc});

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
              onPressed: () => Navigator.pushNamed(context, '/add'),
              child: const Text('Buka Halaman Penjumlahan'),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/subtract'),
              child: const Text('Buka Halaman Pengurangan'),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/multiply'),
              child: const Text('Buka Halaman Perkalian'),
            ),
            const SizedBox(height: 24),
            StreamBuilder<int>(
              stream: bloc.stream,
              initialData: bloc.value,
              builder: (context, s) => Text(
                'Nilai saat ini: ${s.data}',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
