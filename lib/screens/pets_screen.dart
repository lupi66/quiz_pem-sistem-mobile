import 'package:flutter/material.dart';
import 'detail_screen.dart';
import '../widgets/pet_card.dart';

class PetsScreen extends StatelessWidget {
  const PetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Hewan'),
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          PetCard(
            name: 'Milo',
            type: 'Kucing',
            icon: Icons.pets,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailScreen(
                    name: 'Milo',
                    type: 'Kucing',
                  ),
                ),
              );
            },
          ),

          PetCard(
            name: 'Bruno',
            type: 'Anjing',
            icon: Icons.pets,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailScreen(
                    name: 'Bruno',
                    type: 'Anjing',
                  ),
                ),
              );
            },
          ),

          PetCard(
            name: 'Coco',
            type: 'Burung',
            icon: Icons.flutter_dash,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailScreen(
                    name: 'Coco',
                    type: 'Burung',
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}