import 'package:flutter/material.dart';

class MyAppBar extends StatefulWidget {
  const MyAppBar({super.key});

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      foregroundColor: Colors.white,
      flexibleSpace: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 10,
            bottom: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildIcon(Icons.person_outline_rounded),
              Row(
                children: [
                  buildIcon(Icons.search),
                  const SizedBox(width: 20),
                  buildIcon(Icons.notifications_none_rounded),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildIcon(IconData icon) {
    return IconButton(
      onPressed: () {},
      icon: Icon(icon, color: Colors.white),
      iconSize: 25,
      style: ButtonStyle(
        alignment: Alignment.center,
        backgroundColor: WidgetStateProperty.all(
          const Color.fromARGB(
            255,
            181,
            175,
            175,
          ).withAlpha((0.2 * 255).toInt()),
        ),
        padding: WidgetStateProperty.resolveWith(
          (states) => const EdgeInsets.all(10.0),
        ),
        shape: WidgetStateProperty.resolveWith(
          (states) => const CircleBorder(),
        ),
      ),
    );
  }
}
