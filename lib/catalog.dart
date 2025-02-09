// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Catalog extends StatefulWidget {
  const Catalog({super.key});

  @override
  State<Catalog> createState() => _CatalogState();
}

class _CatalogState extends State<Catalog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFCA38ED),
        title: Text(
          "Catalog Page",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                Color(0xFFCA38ED), // Top gradient color
                Colors.black, // Bottom gradient color
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
                ),
            ),
        
          child: Column(
            children: [
              Text(
                "THIS IS THE CATALOG PAGE!",
                style: TextStyle(
                  color: Colors.white,
                ),
                ),

              Image.asset(
              'assets/img3.jpeg',
              height: 220,
              width: 420,
            ),
            ],

          ),
            
          
          
        
      ),
      
    );
  }
}