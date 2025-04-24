import 'package:budget_design/ui/components/account_card.dart';
import 'package:budget_design/ui/components/app_bar.dart';
import 'package:budget_design/ui/components/bottom_bar.dart';
import 'package:budget_design/ui/components/earnings_chart.dart';
import 'package:budget_design/ui/components/savings_card.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight + 10),
        child: MyAppBar(),
      ),
      body: Stack(
        children: [
          // Background base color
          Container(color: Color(0xFF181818)),

          // Gradient glow at the top-right
          Positioned(
            top: -150,
            right: -150,
            child: Container(
              width: 450,
              height: 450,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [
                    const Color(0xFF9B30FF).withAlpha((0.2 * 255).toInt()),
                    Colors.transparent,
                    Colors.transparent,
                  ],
                  stops: [0.1, 0.7, 1.0],
                  radius: 0.8,
                ),
              ),
            ),
          ),

          // Foreground content
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AccountCard(),
                    SizedBox(height: 20),
                    SavingsCard(),
                    SizedBox(height: 20),
                    EarningsChart(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),

      bottomNavigationBar: BottomBar(),
    );
  }
}
