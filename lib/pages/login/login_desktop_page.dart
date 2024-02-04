import 'package:flutter/material.dart';
import 'package:flutter_application_1/providers/providers.dart';
import 'package:flutter_application_1/services/auth_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginDesktopPage extends HookConsumerWidget {
  const LoginDesktopPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final email = ref.watch(emailController);
    final password = ref.watch(passwordController);
    final auth = ref.watch(authService);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Giriş Yap"),
      ),
      backgroundColor: const Color.fromARGB(255, 92, 91, 91),  // Set background color here
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(28.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text("E-Mail :"),
                const SizedBox(height: 5),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  margin: const EdgeInsets.all(9),
                  width: 600,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: TextField(
                      controller: email,
                      decoration: const InputDecoration(
                          hintText: "E-Mail Hesabınızı Girin...")),
                ),
                const SizedBox(height: 10),
                const Text("Şifre :"),
                const SizedBox(height: 20),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  margin: const EdgeInsets.all(8),
                  width: 600,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: TextField(
                      controller: password,
                      decoration: const InputDecoration(
                          hintText: "Şifrenizi Girin...")),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () async {
                        final navigator = Navigator.of(context);
                        await auth.login(
                          email: email.text,
                          password: password.text,
                        );
                        navigator.pushNamedAndRemoveUntil(
                          '/home',
                          (_) => false,
                        );
                      },
                      child: const Text("Giriş Yap"),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
