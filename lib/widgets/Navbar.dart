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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            if (ModalRoute.of(context)!.hasActiveRouteBelow)
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: colors["white"],
                fontSize: 28,
                fontWeight: FontWeight.w700,
              ),
            ),
            if (ModalRoute.of(context)!.hasActiveRouteBelow)
              Container(
                width: 24,
                height: 24,
                color: colors["pink-navbar"],
              )
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(69);
}
