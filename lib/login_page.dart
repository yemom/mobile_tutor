import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            SizedBox(height: 100),
            Text(
              'Hello, welcome back!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontFamily: 'Urbanist',
              ),
            ),
            SizedBox(height: 18),
            Text('Login to continue', style: TextStyle(color: Colors.white)),
            SizedBox(height: 60),
            TextField(
              decoration: InputDecoration(
                hintText: 'username',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                filled: true,
                fillColor: Colors.white.withOpacity(0.5),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                hintText: 'password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                filled: true,
                fillColor: Colors.white.withOpacity(0.5),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  print('Forgot is clicked');
                },
                style: TextButton.styleFrom(foregroundColor: Colors.white),
                child: Text('Forgot password ?'),
              ),
            ),
            SizedBox(
              width: 250,
              child: ElevatedButton(
                onPressed: () {
                  print('Login is clicked');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  foregroundColor: Colors.black,
                ),
                child: Text('Login'),
              ),
            ),
            SizedBox(height: 60),
            Text('Or sign with', style: TextStyle(color: Colors.white)),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                print('Google is clicked');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/image/google.png', width: 22, height: 22),
                  SizedBox(width: 10),
                  Text(
                    'Login with goolge',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print('Facebook is clicked');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/image/facebook.png',
                    width: 22,
                    height: 22,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Login with facebook',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account",
                  style: TextStyle(color: Colors.white),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(foregroundColor: Colors.amber),
                  child: Text(
                    'Sign up',
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
