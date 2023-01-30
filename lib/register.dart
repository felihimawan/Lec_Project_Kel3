import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lec_project/login.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _obscureText = true;
  bool _obscureTextConfirm = true;

  TextEditingController _username = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _pass = TextEditingController();
  TextEditingController _confirmPass = TextEditingController();
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
            Center(
              child: Text(
                "Register",
                style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple.shade900),
              ),
            ),
            SizedBox(
              height: h * 0.04,
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
                controller: _email,
                decoration: InputDecoration(
                  icon: Icon(Icons.mail, color: Colors.deepPurple.shade300),
                  hintText: "Email",
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
                controller: _confirmPass,
                obscureText: _obscureTextConfirm,
                decoration: InputDecoration(
                  icon: Icon(Icons.lock, color: Colors.deepPurple.shade300),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _obscureTextConfirm = !_obscureTextConfirm;
                      });
                    },
                    child: Icon(
                      _obscureTextConfirm
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Colors.deepPurple.shade300,
                    ),
                  ),
                  hintText: "Confirm Password",
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: h * 0.04,
            ),
            SizedBox(
              height: h * 0.07,
              width: w * 0.7,
              child: ElevatedButton(
                  onPressed: () {
                    buttonValidate(
                      username: _username.text,
                      email: _email.text,
                      pass: _pass.text,
                      confirmPass: _confirmPass.text,
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: const Text("Register")),
            ),
            SizedBox(
              height: h * 0.04,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account? ",
                  style: TextStyle(
                      fontSize: 10, color: Colors.deepPurple.shade900),
                ),
                GestureDetector(
                  onTap: (() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return const LoginPage();
                    }));
                  }),
                  child: Text("Login",
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
    _email = TextEditingController();
    _pass = TextEditingController();
    _confirmPass = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _username.dispose();
    _email.dispose();
    _pass.dispose();
    _confirmPass.dispose();
    super.dispose();
  }

  buttonValidate({required String username, email, pass, confirmPass}) async {
    final validPass = RegExp(r"((?=.*[a-z])(?=.*[A-Z])(?=.*\d))");
    final matches = validPass.hasMatch(pass.toString());

    if (username.toString().isEmpty ||
        email.toString().isEmpty ||
        pass.toString().isEmpty ||
        confirmPass.toString().isEmpty) {
      _showSnackbar(message: "All fields must be filled");
    } else if (username.toString().length < 4) {
      _showSnackbar(message: "Username must at least be 4 characters long");
    } else if (!matches) {
      _showSnackbar(
          message:
              "Password must contains at least 1 upper, lower, and number character");
    } else if (confirmPass.toString() != pass.toString()) {
      _showSnackbar(message: "Password does not match");
    } else {
      Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) {
        return const LoginPage();
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
