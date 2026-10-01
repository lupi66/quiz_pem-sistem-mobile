import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String name;
  final String type;

  const DetailScreen({
    super.key,
    required this.name,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Hewan'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 30),

            const Icon(
              Icons.pets,
              size: 120,
              color: Colors.green,
            ),

            const SizedBox(height: 30),

            Text(
              name,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            Text(
              type,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              'Pastikan hewan mendapatkan makanan yang cukup, '
              'air minum, kebersihan, dan pemeriksaan kesehatan secara rutin.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Kembali'),
            ),
          ],
        ),
      ),
    );
  }
}