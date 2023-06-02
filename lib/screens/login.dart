import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_app/screens/all_products.dart';
// import 'package:ecommerce_app/screens/signup.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController username = TextEditingController();

  TextEditingController useremail = TextEditingController();

  addUser() {
    CollectionReference user_details =
        FirebaseFirestore.instance.collection("user-details");
    user_details
        .add({"name": username.text, "password": useremail.text})
        .then((value) => print("User Added"))
        .catchError((e) => print(e));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome back to Mega Mall',
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Log in To Continue',
              style: TextStyle(
                fontSize: 22.0,
              ),
            ),
            SizedBox(height: 70.0),
            Container(
              width: 350,
              child: Column(
                children: [
                  TextField(
                    controller: username,
                    decoration: InputDecoration(
                      labelText: 'Username',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 40.0),
                  TextField(
                    controller: useremail,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              height: 40,
              width: 150,
              child: ElevatedButton(
                child: Text('Log In'),
                onPressed: () {
                  addUser();
                },
              ),
            ),
            SizedBox(height: 180.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  child: Text('Forget Password'),
                  onPressed: () {
                    // Navigate to forget password page
                  },
                ),
                SizedBox(width: 150.0),
                ElevatedButton(
                  child: Text('Sign Up'),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => AllProductsView()));
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
