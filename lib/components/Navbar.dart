import 'package:flutter/material.dart';
import 'package:previsao_do_tempo/utils/constants.dart';

class Navbar extends StatelessWidget implements PreferredSizeWidget {
  const Navbar({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: preferredSize.height,
        color: colors["pink-navbar"],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                color: colors["white"],
                fontSize: 28,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(69);
}
