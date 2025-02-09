// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pages/catalog.dart';
import 'package:pages/page/login_page.dart';
import 'package:pages/page/register_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: const [
                Color(0xFFCA38ED), // Top gradient color
                Colors.black, // Bottom gradient color
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Stack for Circle and Image
              SizedBox(height: 10), // Adjusts the spacing from top

              Stack(
                alignment: Alignment.center,
                children: [
                  // Circular Container
                  Container(
                    height: 400,
                    width: 400,
                    decoration: BoxDecoration(
                      color: Color(0xFFE487FB),
                      shape: BoxShape.circle,
                    ),
                  ),

                  SizedBox(
                    height: 10,
                  ),

                  // Positioned Image
                  Image.asset(
                    'assets/logo.png', // Replace with your image path
                    width: 500, // Adjust the width for the image
                    height: 500, // Adjust the height for the image
                    fit: BoxFit.fitHeight,
                  ),
                ],
              ),

              // Text Content
              Column(
                children: const [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "anime",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 32,
                          ),
                        ),
                        TextSpan(
                          text: "WAVE.com",
                          style: TextStyle(
                            color: Color(0xFFE487FB),
                            fontWeight: FontWeight.bold,
                            fontSize: 32,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      "Watch anime online in HD with subtitles or dubbed, on your phone or computer. AniWAVE your online  anime portal!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Space before buttons

              // Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Login Button
                  InkWell(
                    onTap: (){
                 Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context)=> const LoginPage())
                  );
              },
                    child: Container(
                      margin: EdgeInsets.only(right: 10),
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Color(0xFFE487FB),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    
                      child: Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),

                  // Register Button
                  InkWell(
                    onTap: (){
                      Navigator.push(
                        context, 
                       MaterialPageRoute(
                        builder: (context)=> RegisterPage(),
                       ),
                      );
                    },
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.grey[800],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          "Register",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Final spacing

              // Explore Catalog Button
              // Text(
              //   "Explore Catalog",
              //   style: TextStyle(
              //     color: Colors.white,
              //     fontSize: 16,
              //   ),
              // ),

              TextButton(
                onPressed: (){
                 Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context)=> const Catalog())
                  );
              },
                child: Text(
                "Explore Catalog",
                style: TextStyle(
                  color: Colors.purple,
                ),
                ),
                ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
