import 'package:flutter/material.dart';
import 'package:heheboi_app/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    void navigateToHome() {
      Navigator.pushNamed(context, MyRoutes.homeRoute);
    }

    return Material(
      color: const Color(0xFF18181b),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login-removebg.png",
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20.0),
            Text(
              "Welcome, $name",
              style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFFCCCCCC)),
            ),
            const SizedBox(height: 20.0),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                        hintText: "Enter Username",
                        hintStyle: TextStyle(color: Colors.grey),
                        labelStyle: TextStyle(color: Colors.white),
                        labelText: "Username"),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    style: const TextStyle(color: Colors.white),
                    obscureText: true,
                    decoration: const InputDecoration(
                        hintText: "Enter Password",
                        hintStyle: TextStyle(color: Colors.grey),
                        labelStyle: TextStyle(color: Colors.white),
                        labelText: "Password"),
                  ),
                  const SizedBox(height: 40.0),

                  InkWell(
                    onTap: () async {
                      setState(() {
                        changeButton = true;
                      });
                      await Future.delayed(const Duration(seconds: 1));

                      navigateToHome();
                    },
                    child: AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      width: changeButton ? 50 : 150,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: const Color(0xFFCCCCCC),
                        // shape: changeButton? BoxShape.circle : BoxShape.rectangle,
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 5),
                      ),
                      child: changeButton
                          ? const Icon(
                              Icons.done,
                              color: Color(0xFF18181b),
                            )
                          : const Text(
                              "Login",
                              style: TextStyle(
                                  color: Color(0xFF18181b),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 18),
                            ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
