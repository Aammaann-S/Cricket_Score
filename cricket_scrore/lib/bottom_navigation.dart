import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.black45,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),


        BottomNavigationBarItem(
          icon: Icon(Icons.sports_cricket),
          label: "Cricket",
          backgroundColor: Colors.black,
        ),
      ],
      onTap: (int index){
        switch (index){
          case 0:
            Navigator.pushNamed(context, '/');
            break;
          case 1:
            Navigator.pushNamed(context, '/Cricket');
            break;
        }
      },

    );
  }
}