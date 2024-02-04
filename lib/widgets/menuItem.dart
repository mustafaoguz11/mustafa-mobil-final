import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final Function()? onTap;
  final String title;
  final Icon icon;

  const MenuItem({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,

    
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            icon,
            const SizedBox(width: 21),
            Text(title),
          ],
        ),
      ),
    );
  }
}
