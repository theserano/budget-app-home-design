import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AccountCard extends StatefulWidget {
  const AccountCard({super.key});

  @override
  State<AccountCard> createState() => _AccountCardState();
}

class _AccountCardState extends State<AccountCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 131, 59, 202),
        borderRadius: BorderRadius.circular(20),
        backgroundBlendMode: BlendMode.screen,
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Positioned(
                  top: -190,
                  left: -315,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: MediaQuery.of(context).size.height * 0.3,
                    transform: Matrix4.skewX(1),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.transparent,
                      border: Border.all(
                        color: Color.fromARGB(
                          255,
                          38,
                          38,
                          38,
                        ).withAlpha((0.3 * 255).toInt()),
                        width: 1,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: -160,
                  left: -220,
                  child: Transform(
                    transform: Matrix4.rotationY(-0.6),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: MediaQuery.of(context).size.height * 0.28,
                      transform: Matrix4.skewX(1),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.transparent,
                        border: Border.all(
                          color: Color.fromARGB(
                            255,
                            38,
                            38,
                            38,
                          ).withAlpha((0.3 * 255).toInt()),
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(
                      255,
                      90,
                      90,
                      90,
                    ).withAlpha((0.3 * 255).toInt()),
                    borderRadius: BorderRadius.circular(16),
                    backgroundBlendMode: BlendMode.luminosity,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '**** 4578',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                '4/25',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(width: 20),
                              SvgPicture.asset(
                                'assets/images/mastercard.svg',
                                width: 30,
                                height: 30,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(shape: BoxShape.circle),
                            child: Image.asset(
                              'assets/images/profile.jpeg',
                              fit: BoxFit.cover,
                              alignment: Alignment.topCenter,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Jessica T.',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Total Budget',
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Text(
                          '\$2,310',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          '.00',
                          style: TextStyle(
                            color: Color(
                              0xFFFFFFFF,
                            ).withAlpha((0.5 * 255).toInt()),
                            fontSize: 24,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: Image.asset(
                        'assets/images/flag.png',
                        fit: BoxFit.cover,
                        alignment: Alignment.topLeft,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'USD',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildIconButton(Icons.account_balance_wallet_outlined),
                buildIconButton(Icons.arrow_outward_rounded),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildIconButton(IconData icon) {
    return GestureDetector(
      onTap: () {
        // Your onPressed logic
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 74, vertical: 12),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 38, 37, 38).withAlpha((0.2 * 255).toInt()),
          borderRadius: BorderRadius.circular(40),
        ),
        child: Icon(icon, color: Colors.white, size: 28),
      ),
    );
  }
}
