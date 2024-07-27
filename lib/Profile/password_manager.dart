import 'package:flutter/material.dart';

class PasswordManager extends StatelessWidget {
  const PasswordManager({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Password Setting',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Current Password',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 5,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: '********',
                hintStyle: TextStyle(
                  color: Colors.black.withOpacity(0.3),
                ),
                suffixIcon: const Icon(Icons.visibility_off),
                border: const OutlineInputBorder(),
              ),
            ),
            const Align(
              alignment: Alignment.topRight,
              child: Text(
                'Forgot Password?',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'New Password',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 5,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: '********',
                hintStyle: TextStyle(
                  color: Colors.black.withOpacity(0.3),
                ),
                suffixIcon: const Icon(Icons.visibility_off),
                border: const OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Confirm New Password',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 5,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: '********',
                hintStyle: TextStyle(
                  color: Colors.black.withOpacity(0.3),
                ),
                suffixIcon: const Icon(Icons.visibility_off),
                border: const OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
