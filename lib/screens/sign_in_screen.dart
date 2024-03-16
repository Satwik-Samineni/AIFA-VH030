import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'sign_up_screen.dart';
import 'home_page.dart'; // Import the HomePage file

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Set background color
      body: Stack(
        children: [
          // AIFA text in the middle of the top bar
          Positioned(
            top: 40.0,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'AIFA',
                style: TextStyle(
                  fontFamily: 'Times New Roman',
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          // Sign In content
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Sign In heading with white text
                  Text(
                    'Sign In',
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(color: Colors.white),
                  ),
                  const SizedBox(height: 40.0),

                  // Form with adjusted spacing
                  Form(
                    // ... your form validation logic (if needed)
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Username',
                            labelStyle: TextStyle(color: Colors.white),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                  color: Colors.white.withOpacity(0.2),
                                  width: 2),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(color: Colors.white),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                  color: Colors.white.withOpacity(0.2),
                                  width: 2),
                            ),
                          ),
                          obscureText: true,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20.0), // Spacing before buttons

                  // Row for social login icons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Google Sign-In icon (placeholder)
                      IconButton(
                        onPressed: () {
                          // Add your Google sign-in logic here (optional)
                        },
                        icon: const Icon(
                          FontAwesomeIcons.google,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 20.0), // Spacing between icons

                      // Facebook Sign-In icon (placeholder)
                      IconButton(
                        onPressed: () {
                          // Add your Facebook sign-in logic here (optional)
                        },
                        icon: const Icon(
                          FontAwesomeIcons.facebook,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),

                  // Sign In button (redirect to HomePage on success)
                  ElevatedButton(
                    onPressed: () {
                      // Implement your sign-in functionality
                      // For demonstration purposes, assume successful sign-in
                      // and navigate to Home Page
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()),
                      );
                    },
                    child: const Text('Sign In'),
                  ),

                  // Text for navigating to SignUp screen
                  TextButton(
                    onPressed: () {
                      // Navigate to SignUp screen (replace with your navigation logic)
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpScreen()),
                      );
                    },
                    child: Text(
                      'Don\'t have an account? Sign Up',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
