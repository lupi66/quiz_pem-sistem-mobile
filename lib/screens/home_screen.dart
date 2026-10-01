import 'package:flutter/material.dart';
import 'pets_screen.dart';
import '../widgets/primary_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PetCare'),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.pets,
              size: 100,
              color: Colors.green,
            ),

            const SizedBox(height: 20),

            const Text(
              'Selamat Datang di PetCare',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              'Temukan informasi sederhana untuk membantu merawat hewan kesayanganmu.',
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 30),

            PrimaryButton(
              text: 'Lihat Hewan',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PetsScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}