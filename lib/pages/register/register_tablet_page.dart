import 'package:flutter/material.dart';
import 'package:flutter_application_1/providers/providers.dart';
import 'package:flutter_application_1/services/auth_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RegisterTabletPage extends HookConsumerWidget {
  const RegisterTabletPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth = ref.watch(authService);
    final email = ref.watch(emailController);
    final password = ref.watch(passwordController);
    final password2 = ref.watch(passwordController2);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kayıt Ol"),
      ),
      backgroundColor:
          const Color.fromARGB(255, 92, 91, 91), 
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(48.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text("E-Posta :"),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  margin: const EdgeInsets.all(9),
                  width: 500,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: TextField(
                      controller: email,
                      decoration: const InputDecoration(
                          hintText: "E-Posta Hesabınızı Giriniz")),
                ),
                const SizedBox(height: 10),
                const Text("Şifre :"),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  margin: const EdgeInsets.all(8),
                  width: 500,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: TextField(
                      controller: password,
                      decoration:
                          const InputDecoration(hintText: "Şifrenizi Giriniz")),
                ),
                const SizedBox(height: 10),
                const Text("Tekrar Şifre :"),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  margin: const EdgeInsets.all(8),
                  width: 500,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 254, 254),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: TextField(
                      controller: password2,
                      decoration: const InputDecoration(
                          hintText: "Şifrenizi Tekrar Giriniz")),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () async {
                        if (password.text == password2.text) {
                          final navigator = Navigator.of(context);
                          await auth.register(
                            email: email.text,
                            password: password.text,
                          );
                          navigator.pushNamedAndRemoveUntil(
                              '/welcome', (Route<dynamic> route) => false);
                        } else {
                          //Şifreler uyuşmuyor mesajı gönder
                        }
                      },
                      child: const Text("Kayıt Ol"),
                    ),
                    const SizedBox(height: 15),
                  ],
                ),
                const SizedBox(height: 175),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
