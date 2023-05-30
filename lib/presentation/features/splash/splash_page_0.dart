// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';

import '../login/login_page.dart';

class SplashPage0 extends StatefulWidget {
  const SplashPage0({super.key});

  @override
  State<SplashPage0> createState() => _SplashPage0State();
}

class _SplashPage0State extends State<SplashPage0> {
  @override
  void initState() {
    navigateToHome();
    super.initState();
  }

  void navigateToHome() async {
    await Future.delayed(const Duration(seconds: 5));
    Navigator.of(context)
        .pushNamedAndRemoveUntil(LoginPage.routeName, (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          'assets/images/background.png',
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                width: 120,
                height: 120,
                decoration: const BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                        image: AssetImage('assets/images/logo.png'))),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text('Thị trường chứng khoán , dám chơi mới giàu .')
          ],
        )
      ],
    ));
  }
}
