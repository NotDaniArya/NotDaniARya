import 'package:flutter/material.dart';
import 'package:my_portofolio/utils/string_colors.dart';

class WebNavbar extends StatelessWidget implements PreferredSizeWidget {
  const WebNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: RColor.primary,
      title: const Text.rich(TextSpan(children: [
        TextSpan(
            text: 'Dani ',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        TextSpan(
            text: 'Arya',
            style:
                TextStyle(color: RColor.widGrenn, fontWeight: FontWeight.bold))
      ])),
      actions: [
        TextButton(
            onPressed: () {},
            child: const Text(
              'Home',
              style: TextStyle(color: Colors.white),
            )),
        const SizedBox(
          width: 20,
        ),
        TextButton(
            onPressed: () {},
            child: const Text(
              'Projects',
              style: TextStyle(color: Colors.white),
            )),
        const SizedBox(
          width: 20,
        ),
        TextButton(
            onPressed: () {},
            child: const Text(
              'About',
              style: TextStyle(color: Colors.white),
            )),
        const SizedBox(
          width: 20,
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
