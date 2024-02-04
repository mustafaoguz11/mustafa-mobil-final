import 'package:flutter/material.dart';

Widget StoryItem(String name, IconData icon, VoidCallback onTap) {
  return Padding(
      padding: const EdgeInsets.all(5),
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(2.5),
              child: Container(
                padding: const EdgeInsets.all(2),
                width: 90, 
                decoration: BoxDecoration(
                  color: const Color(0xFFebddff),
                  borderRadius: BorderRadius.circular(
                      410), 
                ),
                child: CircleAvatar(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        icon,
                        size: 20,
                        color: Colors.black,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        name,
                        style: const TextStyle(fontSize: 11),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ));
}

Widget StoryItem1(String name, IconData icon, VoidCallback onTap) {
  return Padding(
      padding: const EdgeInsets.all(5),
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(2.5),
              child: Container(
                padding: const EdgeInsets.all(2),
                width:
                    150, // Genişliği ayarlayarak yuvarlakları daha uzun yapın
                decoration: BoxDecoration(
                  color: const Color(0xFFebddff),
                  borderRadius: BorderRadius.circular(
                      410), // Dikdörtgenin yarısından küçük olmalı
                ),
                child: CircleAvatar(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        icon,
                        size: 20,
                        color: Colors.black,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        name,
                        style: const TextStyle(fontSize: 11),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ));
}

Widget StoryItem2(String name, IconData icon, VoidCallback onTap) {
  return Padding(
      padding: const EdgeInsets.all(5),
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(2.5),
              child: Container(
                padding: const EdgeInsets.all(2),
                width:
                    100, // Genişliği ayarlayarak yuvarlakları daha uzun yapın
                decoration: BoxDecoration(
                  color: const Color(0xFFebddff),
                  borderRadius: BorderRadius.circular(
                      410), // Dikdörtgenin yarısından küçük olmalı
                ),
                child: CircleAvatar(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        icon,
                        size: 20,
                        color: Colors.black,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        name,
                        style: const TextStyle(fontSize: 11),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ));
}
