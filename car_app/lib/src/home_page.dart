import 'package:app/src/buy.dart';
import 'package:app/src/like.dart';
import 'package:app/src/mainpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPageIndex = 0;
  final mainpage = const MainPage();
  final likepage = const LikePage();
  final buypage = const BuyPage();

  @override
  Widget build(BuildContext context) {
    final altura = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(5.0),
          child: ClipOval(
            child: Container(
              height: 30,
              width: 30,
              color: Colors.white,
              child: const Icon(
                Icons.person,
                color: Colors.black,
              ),
            ),
          ),
        ),
        title: RichText(
          textAlign: TextAlign.start,
          text: TextSpan(children: [
            TextSpan(
                text: 'Bem Vindo !',
                style: TextStyle(
                    fontSize: 10, color: Colors.white.withOpacity(0.6))),
            const TextSpan(text: ' \n '),
            const TextSpan(text: 'Gabriel Henrique Rosa'),
          ]),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Icon(Icons.notifications_none),
          )
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: NavigationBar(
              height: altura * 0.09,
              backgroundColor: Colors.black,
              onDestinationSelected: (int index) {
                setState(() {
                  currentPageIndex = index;
                });
              },
              selectedIndex: currentPageIndex,
              destinations: const <Widget>[
                NavigationDestination(
                  icon: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  label: '',
                ),
                NavigationDestination(
                  icon: Icon(
                    CupertinoIcons.heart,
                    color: Colors.white,
                  ),
                  label: '',
                  selectedIcon: Icon(
                    CupertinoIcons.heart_fill,
                    color: Colors.white,
                  ),
                ),
                NavigationDestination(
                  icon: Icon(
                    CupertinoIcons.bag,
                    color: Colors.white,
                  ),
                  label: '',
                  selectedIcon: Icon(
                    CupertinoIcons.bag_fill,
                    color: Colors.white,
                  ),
                ),
                NavigationDestination(
                  icon: Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                  label: '',
                ),
              ],
            ),
          ),
        ),
      ),
      body: <Widget>[
        Column(
          children: [mainpage],
        ),
        Column(
          children: [likepage],
        ),
        Column(
          children: [buypage],
        ),
        const Column(
          children: [],
        ),
      ][currentPageIndex],
    );
  }
}
