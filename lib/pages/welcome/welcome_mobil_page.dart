import 'package:flutter/material.dart';

class WelcomeMobilePage extends StatelessWidget {
  const WelcomeMobilePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 92, 91, 91),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min, // ANA YON BOYUTU ASSAGI
          children: [
            Image.asset(
              'assets/images/ssmotors.webp',
              width: 1550, // Resmin genişliği
              height: 320, // Resmin yüksekliği
            ),

            const SizedBox(
                height: 10), // Buradaki yüksekliği düşürerek ayarlayabiliriz
            Padding(
              padding: const EdgeInsets.only(
                  bottom:
                      100), // Buradaki alt boşluğu düşürerek ayarlayabiliriz
              child: Row(
                mainAxisAlignment: MainAxisAlignment
                    .center, // ORTALAYAMA YARIYOR LOGIN VE REGISTER
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: const Row(
                      children: [
                        Icon(Icons.login),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Login"),
                      ],
                    ),
                  ),
                  const SizedBox(width: 11),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/register');
                    },
                    child: const Row(
                      children: [
                        Icon(Icons.app_registration),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Register"),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
