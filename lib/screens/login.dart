import 'package:bolt_clone/screens/home_page.dart';
import 'package:bolt_clone/screens/register.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
const Login({Key? key}) : super(key: key);
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Hey there!',
          style: TextStyle(fontSize: 34),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(33, 150, 243, 1),
      ),
      body: Center(
        
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const SizedBox(height: 15),
                  const TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter Email',
                      border: OutlineInputBorder(),

                     prefixIcon: Icon(
                        Icons.email,
                        color: Colors.grey,
                      ),
                      
                    ),

                  ),
                  const SizedBox(height: 15),
                  const TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter Password',
                      border: OutlineInputBorder(),

                     prefixIcon: Icon(
                        Icons.password,
                        color: Colors.grey,
                      ),
                      
                      

                    ),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => const HomePage(),
                        ),
                      );
                    },
                    backgroundColor: Colors.blue,
                    child: const Text('Login'),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigate to the register page
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => const Register(),
                        ),
                      );
                    },
                    child: RichText(
                      text: const TextSpan(
                        text: 'Don\'t have an account? ',
                        style: TextStyle(color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Register',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
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

