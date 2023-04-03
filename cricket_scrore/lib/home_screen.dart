
import 'package:cricket_score/bottom_navigation.dart';
import 'package:cricket_score/menu_drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MenuDrawer(),
      appBar: AppBar(title: const Text('Cricket Home pages'), 
      backgroundColor: Colors.black, 
      ),

      bottomNavigationBar: const BottomNavigation(),
      
      body: Container(
       
      child: Center(
        child: Container(
          padding: const EdgeInsets.all(25),
          decoration: const BoxDecoration(
            // borderRadius: BorderRadius.circular(50)),
            borderRadius:  BorderRadius.all(
               Radius.circular(25),
              ),
              color: Colors.white54
              ),
          
          child: const Text(
            'Cricket Score',
            style: TextStyle(fontSize: 28),            
            ),
            

          ),
        ),
      ),

    );
  }
}

