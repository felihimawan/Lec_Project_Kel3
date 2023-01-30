import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lec_project/home.dart';
import 'package:lec_project/navbar.dart';
import 'package:lec_project/register.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;

  TextEditingController _username = TextEditingController();
  TextEditingController _pass = TextEditingController();
  final _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      key: _key,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: w,
              height: h * 0.3,
              child: Lottie.network(
                  'https://assets2.lottiefiles.com/packages/lf20_zprb9vzj.json'),
            ),
            SizedBox(
              height: h * 0.04,
            ),
            Center(
              child: Text(
                "Welcome Back,",
                style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple.shade900),
              ),
            ),
            SizedBox(
              height: h * 0.05,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 1),
              padding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 0.5),
              height: h * 0.07,
              width: w * 0.7,
              decoration: BoxDecoration(
                color: Colors.deepPurple.shade50,
                borderRadius: BorderRadius.circular(15),
              ),
              child: TextField(
                controller: _username,
                decoration: InputDecoration(
                  icon: Icon(Icons.account_circle_rounded,
                      color: Colors.deepPurple.shade300),
                  hintText: "Username",
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: h * 0.02,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 1),
              padding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 0.5),
              height: h * 0.07,
              width: w * 0.7,
              decoration: BoxDecoration(
                color: Colors.deepPurple.shade50,
                borderRadius: BorderRadius.circular(15),
              ),
              child: TextField(
                controller: _pass,
                obscureText: _obscureText,
                decoration: InputDecoration(
                  icon: Icon(Icons.lock, color: Colors.deepPurple.shade300),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                    child: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off,
                      color: Colors.deepPurple.shade300,
                    ),
                  ),
                  hintText: "Password",
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: h * 0.05,
            ),
            SizedBox(
              height: h * 0.07,
              width: w * 0.7,
              child: ElevatedButton(
                  onPressed: () {
                    buttonValidate(
                      username: _username.text,
                      pass: _pass.text,
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: const Text("Login")),
            ),
            SizedBox(
              height: h * 0.02,
            ),
            SizedBox(
              height: h * 0.06,
              width: w * 0.7,
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.deepPurple.shade100,
                      height: 1.5,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text("Or continue with",
                        style: TextStyle(
                            fontSize: 10, color: Colors.deepPurple.shade900)),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.deepPurple.shade100,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return const NavBar();
                    }));
                  }),
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("assets/img/googleIcon.png"),
                          fit: BoxFit.cover),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: h * 0.04,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account? ",
                  style: TextStyle(
                      fontSize: 10, color: Colors.deepPurple.shade900),
                ),
                GestureDetector(
                  onTap: (() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return const RegisterPage();
                    }));
                  }),
                  child: Text("Sign Up",
                      style: TextStyle(
                          fontSize: 10,
                          color: Colors.deepPurpleAccent.shade100,
                          fontWeight: FontWeight.bold)),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    _username = TextEditingController();
    _pass = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _username.dispose();
    _pass.dispose();
    super.dispose();
  }

  buttonValidate({required String username, pass}) async {
    final validPass = RegExp(r"((?=.*[a-z])(?=.*[A-Z])(?=.*\d))");
    final matches = validPass.hasMatch(pass.toString());

    if (username.toString().isEmpty || pass.toString().isEmpty) {
      _showSnackbar(message: "All fields must be filled");
    } else if (username.toString().length < 4) {
      _showSnackbar(message: "Username must at least be 4 characters long");
    } else if (!matches) {
      _showSnackbar(
          message:
              "Password must contains at least 1 upper, lower, and number character");
    } else {
      Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) {
        return const NavBar();
      }));
    }
  }

  void _showSnackbar({required String message}) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: GestureDetector(
        onTap: (() {}),
        child: Text(
          message,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Colors.deepPurple.shade300,
      duration: (const Duration(seconds: 2)),
    ));
  }
}
