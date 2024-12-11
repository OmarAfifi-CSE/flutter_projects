import 'package:flutter/material.dart';
import '../componants/my_button.dart';
import '../componants/my_textfield.dart';
import 'signin_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  // Declare TextEditingControllers for email and password fields
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    // Dispose the controllers when the widget is disposed
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Main content overlay
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Welcome back message
                    const Text(
                      textAlign: TextAlign.center,
                      "Create Account",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 55,
                    ),
                    const Text(
                      textAlign: TextAlign.start,
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Row(
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.person_outline_outlined,
                          size: 12,
                        ),
                        Text(
                          textAlign: TextAlign.start,
                          " Your username",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    // Email TextField
                    MyTextfield(
                      controller: _usernameController,
                      hintText: 'Username',
                      obscureText: false,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Row(
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.email_outlined,
                          size: 12,
                        ),
                        Text(
                          textAlign: TextAlign.start,
                          " Your email",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    // Email TextField
                    MyTextfield(
                      controller: _emailController,
                      hintText: 'Email',
                      obscureText: false,
                    ),
                    const SizedBox(
                      height: 30,
                    ),

                    const Row(
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.lock_outline,
                          size: 12,
                        ),
                        Text(
                          textAlign: TextAlign.start,
                          " Password",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    // Password TextField
                    MyTextfield(
                      controller: _passwordController,
                      hintText: 'Password',
                      obscureText: true,
                    ),
                    const SizedBox(
                      height: 100,
                    ),

                    // Sign in button
                    const MyButton(
                      button_msg: 'Sign Up',
                      bgColor: Colors.blue,
                      fgColor: Colors.white,
                      onPressed: null,
                      padding: 15,
                      borderRadius: 50,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Already a user?",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(width: 4),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SigninScreen()),
                            );
                          },
                          child: const Text(
                            'Sign In',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    // Or continue with divider
                    const Text(
                      textAlign: TextAlign.center,
                      'Or Continue with',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    const Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 0.3,
                            color: Color(0xFF828282),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Google button
                        Image.asset(
                          'assets/images/social icons.png',
                          height: 48,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}