import 'package:flutter/material.dart';

class SettingItems extends StatelessWidget {
  final Function()? onTap;
  final String title;

  const SettingItems({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 0, bottom: 15, right: 0, top: 15),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            const SizedBox(width: 7),
            Text(
              title,
              style: const TextStyle(
                fontSize: 31,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
