import 'package:cricket_score/cricket_screen.dart';
import 'package:cricket_score/home_screen.dart';
import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: buildMenuItems(context),
      ),
    );
  }

  List<Widget> buildMenuItems(BuildContext ctx){
    final List<String> menuTitles=['Home', 'Cricket'];

    List<Widget> menuItems = []; //cause only widgets get clickable property

    menuItems.add(
      const DrawerHeader(
        decoration: BoxDecoration(
          color: Color.fromRGBO(0, 0, 0, 1),
        ),
        child: Center(
          child: Text('Bla Bla Pro', 
            style: TextStyle(color: Colors.orange, fontSize:30
            ),
          ),
        ),
      )
    );

    menuTitles.forEach((element) {
      Widget screen = Container();// variable hold empty container

      menuItems.add(ListTile(
        title: Text(element, style: const TextStyle(fontSize: 25),),
        onTap: () {
          
          switch(element){ 
            case 'Home':
              screen = HomeScreen();
              break;
            case 'Cricket':
              screen = CricketScreen();
              break;
          }

          Navigator.of(ctx).push(
            MaterialPageRoute(builder: (ctx) => screen),
          );

        },
    ));  
    });

    return menuItems;    

  }

}