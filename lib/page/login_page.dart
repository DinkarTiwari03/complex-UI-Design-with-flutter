// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pages/page/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFCA38ED),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 2),
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFFCA38ED), // Top gradient color
                Colors.black, // Bottom gradient color
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: SingleChildScrollView(
            // Add this to make content scrollable
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Align content to the start
              children: [
                const SizedBox(height: 2),
                Image.asset(
                  'assets/logo2.png',
                  height: 160,
                  width: 800,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      "ひ さ しぶ り!",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: const Text(
                    "Hello, we missed you!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Email",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),

                // FOR EMAIL
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter your Email!",
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.5),
                      hintStyle: const TextStyle(color: Colors.white60),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Password",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),

                // FOR PASSWORD
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter your Password!",
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.5),
                      hintStyle: const TextStyle(color: Colors.white60),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),

                TextButton(
                  onPressed: () {},
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Forgotten Password?",
                        style: TextStyle(
                          color: Color(0xFFCA38ED),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 10,
                ),

                // For DIVIDER
                Center(
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.white,
                          thickness: 1,
                          endIndent:
                              10, // Adds spacing between the divider and text
                        ),
                      ),
                      Text(
                        "User Login Social",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.white,
                          thickness: 1,
                          indent:
                              10, // Adds spacing between the divider and text
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Instagram Button
                    Container(
                      margin: EdgeInsets.all(8),
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.white, width: 2),
                      ),
                      child: Image.asset(
                        'assets/Instagram_Logo.png', // Replace with the actual path to your Instagram logo
                        height: 30,
                        width: 30,
                      ),
                    ),

                    SizedBox(
                      width: 20,
                    ),
                    // Twitter Button
                    Container(
                      margin: EdgeInsets.all(8),
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.white, width: 2),
                      ),

                      child: Image.asset(
                        'assets/Twitter_Logo.png', // Replace with the actual path to your Twitter logo
                        height: 30,
                        width: 30,
                      ),
                    ),
                    SizedBox(
                      width: 20,

                    ),


                    // Facebook Button (Icon)
                    Container(
                      margin: EdgeInsets.all(8),
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.white, width: 2),
                      ),
                      child: Icon(
                        Icons.facebook,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ],
                ),


                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      
                      Text(
                        "not register yet?",
                        style: TextStyle(
                          color: Colors.white
                        ),
                      ),
                  
                  
                      TextButton(onPressed: (){
                        Navigator.push(
                          context,
                         MaterialPageRoute(
                          builder: (context)=> RegisterPage()
                          ),
                        );
                      }, 
                      child: Text(
                        "Register",
                        style: TextStyle(
                          color: Colors.purple,
                        ),
                      
                      )
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
