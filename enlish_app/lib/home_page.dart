import 'package:enlish_app/profile_page.dart';
import 'package:enlish_app/sign_up.dart';
import 'package:enlish_app/vacobulary_notebook.dart';
import 'package:enlish_app/word_seachh.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 1;
  final screens = [
    SignUp(),
    Notebook(),
    WordSeach(),
    ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: NavigationBar(
        height: 70,
        onDestinationSelected: (i) => setState(() {
          this.index = i;
        }),
        selectedIndex: index,
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: "",
          ),
          NavigationDestination(
            icon: Icon(Icons.menu_book),
            label: "",
          ),
          NavigationDestination(
            icon: Icon(Icons.search),
            label: "",
          ),NavigationDestination(
            icon: Icon(Icons.person),
            label: "",
          ),
        ],
      ),
    );
  }
}
