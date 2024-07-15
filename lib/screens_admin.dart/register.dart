import 'package:flutter/material.dart';
import 'package:bluejobs_admin/screens_admin.dart/signin.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
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
                      labelText: 'Enter your name',
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
                  TextField(
                    controller: _passwordController,
                    decoration: const InputDecoration(
                      labelText: 'Re-enter your Password',
                      border: OutlineInputBorder(),
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(height: 16,),
                  ElevatedButton(
                    onPressed: () {
                      // Navigate to Dashboard when the button is pressed
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SigninPage()),
                      );
                    },
                   // const SizedBox(height: 20,),
                    child: Text('Create your Account'),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity,
                          50), // Make the button the same size as the TextField
                    ),
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
