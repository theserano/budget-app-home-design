import 'package:flutter/material.dart';

class SavingsCard extends StatefulWidget {
  const SavingsCard({super.key});

  @override
  State<SavingsCard> createState() => _SavingsCardState();
}

class _SavingsCardState extends State<SavingsCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color.fromARGB(255, 77, 8, 119),
            Color.fromARGB(255, 74, 19, 140),
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(
              255,
              208,
              208,
              208,
            ).withAlpha((0.15 * 255).toInt()),
            offset: const Offset(0, 1),
            blurRadius: 12,
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Left Icon (Jar with coins)
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.black.withAlpha((0.2 * 255).toInt()),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset(
              'assets/images/savings.png',
              width: 40,
              height: 40,
            ),
          ),

          const SizedBox(width: 12),

          // Text Column
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Savings',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  '€0.00',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
          ),

          // Right Buttons
          Row(
            children: [
              _buildCircleIcon(Icons.arrow_upward),
              const SizedBox(width: 8),
              _buildCircleIcon(Icons.account_balance_wallet_outlined),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCircleIcon(IconData icon) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color.fromARGB(
          255,
          33,
          33,
          33,
        ).withAlpha((0.2 * 255).toInt()),
        shape: BoxShape.circle,
      ),
      child: Icon(icon, color: Colors.white, size: 20),
    );
  }
}
