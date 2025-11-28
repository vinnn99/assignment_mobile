import 'package:flutter/material.dart';
import 'package:assignment_mobile/bloc/counter_bloc.dart';

class IncrementPage extends StatefulWidget {
  final CounterBloc bloc;
  const IncrementPage({super.key, required this.bloc});

  @override
  State<IncrementPage> createState() => _IncrementPageState();
}

class _IncrementPageState extends State<IncrementPage> {
  final TextEditingController _ctrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Halaman Penjumlahan')),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 12),
            StreamBuilder<int>(
              stream: widget.bloc.stream,
              initialData: widget.bloc.value,
              builder: (context, snap) => Text(
                '${snap.data}',
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ),
            const SizedBox(height: 28),
            TextField(
              controller: _ctrl,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Masukkan angka (mis. 3)',
              ),
            ),
            const SizedBox(height: 18),
            ElevatedButton.icon(
              onPressed: () {
                final text = _ctrl.text.trim();
                final n = int.tryParse(text);
                if (n == null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Masukkan angka valid')),
                  );
                  return;
                }
                widget.bloc.add(n);
              },
              icon: const Icon(Icons.add),
              label: const Text('Tambah'),
            ),
          ],
        ),
      ),
    );
  }
}
