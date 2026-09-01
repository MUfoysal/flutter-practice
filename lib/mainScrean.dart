import 'package:flutter/material.dart';

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Mainscrean());
  }
}

class Mainscrean extends StatefulWidget {
  const Mainscrean({super.key});

  @override
  State<Mainscrean> createState() => _MainscreanState();
}

class _MainscreanState extends State<Mainscrean> {
  int currentIndex = 0;

  final List<Widget> pages = [HomePage(), ProfilePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        title: Text("Welcome", style: TextStyle(color: Colors.white)),
      ),
      body: pages[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,

        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.blueAccent,

        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: AnimatedScale(
              scale: currentIndex == 0 ? 1.3 : 0.8,
              duration: Duration(milliseconds: 300),
              child: Icon(Icons.home),
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: AnimatedScale(
              scale: currentIndex == 1 ? 1.3 : 0.8,
              duration: Duration(milliseconds: 300),
              child: Icon(Icons.person),
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("This is home page", style: TextStyle(fontSize: 25)),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("This is profile page", style: TextStyle(fontSize: 25)),
    );
  }
}
