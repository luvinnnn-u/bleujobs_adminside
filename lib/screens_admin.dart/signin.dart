import 'package:flutter/material.dart';
import 'package:bluejobs_admin/screens_admin.dart/dashboard.dart';
import 'package:bluejobs_admin/screens_admin.dart/register.dart';
import 'package:bluejobs_admin/screens_admin.dart/forgetpass.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({Key? key}) : super(key: key);

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SIGNIN'),
        backgroundColor: Color.fromARGB(255, 17, 52, 80),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Image.asset(
                  'assets/images/ig logo.jpg'), // Adjust the asset path as needed
            ),
            Spacer(), // Creates space between the image and the form
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment:
                    MainAxisAlignment.center, // Center the form vertically
                children: [
                  const Text(
                    'Welcome to BlueJobs',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold), // Style the welcome text
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    controller: _usernameController,
                    decoration: const InputDecoration(
                      labelText: 'Username',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    controller: _passwordController,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      // Navigate to Dashboard when the button is pressed
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DashBoardPage()),
                      );
                    },
                    child: Text('Login'),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity,
                          50), // Make the button the same size as the TextField
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment
                        .spaceBetween, // Space out the Register and Forgot Password options
                    children: [
                      // TextButton(
                      //   onPressed: () {
                      //     Navigator.push(
                      //         context,
                      //         MaterialPageRoute(
                      //   },
                      //   child: Text('Register here'),
                      // ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegisterPage()));
                        },
                        child: Text('Register'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ForgetPasswordPage()));
                        },
                        child: Text('Forgot password?'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
