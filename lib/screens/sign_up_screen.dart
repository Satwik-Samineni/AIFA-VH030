import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'sign_in_screen.dart';
import 'home_page.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        // Wrap the body with Stack
        children: [
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Sign Up heading with white text
                  Text(
                    'Sign Up',
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
                        // Email field
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Email',
                            labelStyle: TextStyle(color: Colors.white),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                color: Colors.white.withOpacity(0.2),
                                width: 2,
                              ),
                            ),
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        const SizedBox(height: 10.0),

                        // Username field (same as SignInScreen)
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Username',
                            labelStyle: TextStyle(color: Colors.white),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                color: Colors.white.withOpacity(0.2),
                                width: 2,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10.0),

                        // Password field (same as SignInScreen)
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(color: Colors.white),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                color: Colors.white.withOpacity(0.2),
                                width: 2,
                              ),
                            ),
                          ),
                          obscureText: true,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20.0), // Spacing before buttons

                  // Row for social login icons (placeholders)
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

                  // Sign Up button (replace with your logic)
                  ElevatedButton(
                    onPressed: () {
                      // Implement your sign-up functionality
                    },
                    child: const Text('Sign Up'),
                  ),

                  // Text for navigating back to SignIn screen (modified)
                  TextButton(
                    onPressed: () {
                      // Use Navigator.pushReplacement to replace current screen
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignInScreen()),
                      );
                    },
                    child: Text(
                      'Already have an account? Sign In',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            // Position the AIFA text at the top middle
            top: 0,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                'AIFA',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
