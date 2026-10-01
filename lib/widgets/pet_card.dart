import 'package:flutter/material.dart';

class PetCard extends StatelessWidget {
  final String name;
  final String type;
  final IconData icon;
  final VoidCallback onTap;

  const PetCard({
    super.key,
    required this.name,
    required this.type,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              // Icon hewan
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.green.shade100,
                child: Icon(
                  icon,
                  size: 32,
                  color: Colors.green,
                ),
              ),

              const SizedBox(width: 16),

              // Nama dan jenis hewan
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      type,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),

              // Icon untuk menunjukkan bisa diklik
              const Icon(
                Icons.arrow_forward_ios,
                size: 18,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}