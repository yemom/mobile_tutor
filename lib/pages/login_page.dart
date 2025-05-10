import 'package:flutter/material.dart';
import 'package:myfirst_flutter_project/config/app_icon.dart';
import 'package:myfirst_flutter_project/config/app_route.dart';
import 'package:myfirst_flutter_project/config/app_string.dart';

const baseUrl = 'http://10.0.2.2:8080';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  /*final loginRoute = '$baseUrl/login';
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  LoginPage({super.key});

  */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              children: [
                Spacer(),
                Text(
                  AppString.helloWelcome,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Urbanist',
                  ),
                ),
                SizedBox(height: 18),
                Text(
                  AppString.logninToContinue,
                  style: TextStyle(color: Colors.white),
                ),
                Spacer(),
                TextField(
                  /*controller: usernameController,*/
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
                  /*controller: passwordController,*/
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
                    child: Text(AppString.forgotPassword),
                  ),
                ),
                SizedBox(height: 32),
                SizedBox(
                  width: 250,
                  child: ElevatedButton(
                    onPressed: () async {
                      /*final user = await doLogin();*/
                      Navigator.of(context).pushReplacementNamed(AppRoute.main);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                      foregroundColor: Colors.black,
                    ),
                    child: Text(AppString.login),
                  ),
                ),
                Spacer(),
                Text(
                  AppString.orSignWith,
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    print('Google is clicked');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                  child: SizedBox(
                    height: 48,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(AppIcon.google, width: 22, height: 22),
                        SizedBox(width: 10),
                        Text(
                          AppString.loginWithGoogle,
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    print('Facebook is clicked');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                  child: SizedBox(
                    height: 48,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(AppIcon.facebook, width: 22, height: 22),
                        SizedBox(width: 10),
                        Text(
                          AppString.loginWithFacebook,
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      AppString.dontHaveAnAccount,
                      style: TextStyle(color: Colors.white),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.amber,
                      ),
                      child: Text(
                        AppString.signup,
                        style: TextStyle(decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /*Future<User> doLogin() async {
    final username = usernameController.text;
    final password = passwordController.text;
    final body = {'username': username, 'password': password};
    final response = await http.post(
      Uri.parse(loginRoute),
      body: jsonEncode(body),
    );
    if (response.statusCode == 200) {
      print(response.body);
      final json = jsonDecode(response.body);
      final user = User.fromJson(json['data']);
      return user;
    } else {
      print(response.body);
      print('you have error!');
      throw Exception('Error');
    }
  }*/
}
