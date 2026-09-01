import 'package:flutter/material.dart';

class Mytest extends StatelessWidget {
  const Mytest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "first live app demo",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.vertical(
              bottom: Radius.circular(20)
            )
          ),
          title: Row(
            children: [
              SizedBox(width: 8,),
              Text("Welcome Mr/Mrs",
              style: TextStyle(
                color: Colors.white
              ),)
              ]) ),
        body: Center(
          child: Text("my name is mohib ullah"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items:[ BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.blue,),
            label: "home"
            ),
            BottomNavigationBarItem(icon: 
            Icon(Icons.person,color: Colors.blue,),
            label: "profile"
            )
            ]
        ),
      ),
    );
  }
}
