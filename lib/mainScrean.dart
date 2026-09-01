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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: 220,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(color: Colors.blueAccent),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 35,
                    child: Icon(
                      Icons.person,
                      size: 40,
                      color: Colors.deepPurple,
                    ),
                  ),

                  SizedBox(height: 8),

                  Text(
                    "Mohib Ullah",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),

                  Text(
                    "mohib@gmail.com",
                    style: TextStyle(color: Colors.white70, fontSize: 15),
                  ),
                ],
              ),
            ),

            ListTile(leading: Icon(Icons.home), title: Text("Home")),

            ListTile(leading: Icon(Icons.person), title: Text("Profile")),

            ListTile(leading: Icon(Icons.settings), title: Text("Settings")),

            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Log out"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
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
    return SingleChildScrollView(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Good Afternoon",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Text(
            "Welcome Back, mohib ullah",
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          SizedBox(height: 5),
          TextField(
            decoration: InputDecoration(
              hintText: "Search....",
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
          SizedBox(height: 24),
          Text(
            "Quick Action",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),

          SizedBox(height: 12),

          Row(
            children: [
              Expanded(
                child: Card(
                  child: InkWell(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Courses Clicked"),
                          duration: Duration(seconds: 1),
                        ),
                      );
                    },

                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Icon(Icons.book, size: 40, color: Colors.blueAccent),
                          SizedBox(height: 15),

                          Text("Courses", style: TextStyle(fontSize: 18)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 15),

              Expanded(
                child: Card(
                  child: InkWell(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Nots Clickd"),
                          duration: Duration(seconds: 1),
                        ),
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Icon(Icons.note, size: 40, color: Colors.blueAccent),

                          SizedBox(height: 15),

                          Text("Notes", style: TextStyle(fontSize: 18)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: Card(
                  child: InkWell(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Courses time clicked"),
                          duration: Duration(seconds: 1),
                        ),
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Icon(
                            Icons.timelapse,
                            size: 40,
                            color: Colors.blueAccent,
                          ),
                          SizedBox(height: 15),
                          Text("Courses Time", style: TextStyle(fontSize: 18)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          SizedBox(height: 20),
          CircleAvatar(
            radius: 55,
            backgroundColor: Colors.blueAccent,
            child: Icon(Icons.person, size: 65, color: Colors.deepPurple),
          ),
          SizedBox(height: 15),
          //name
          Text(
            "MOHIB ULLAH",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          //edite profile button
          ElevatedButton.icon(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("edit Profile Clickd"),
                  duration: Duration(seconds: 1),
                ),
              );
            },
            icon: Icon(Icons.edit),
            label: Text("Edite Profile"),
          ),
          SizedBox(height: 25),
          //account section
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Account",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 10),
          Card(
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Personal Information"),
                  trailing: Icon(Icons.arrow_forward_ios, size: 18),
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Personal Information"),
                        duration: Duration(seconds: 1),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 10),

          //setting section
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "settings",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 10),
          Card(
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.notifications),
                  title: Text("Notifications"),
                  trailing: Icon(Icons.arrow_forward_ios, size: 18),
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Notification Clicked"),
                        duration: Duration(seconds: 1),
                      ),
                    );
                  },
                ),
                Divider(),

                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("Settings"),
                  trailing: Icon(Icons.arrow_forward_ios, size: 18),
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Settings Clicked"),
                        duration: Duration(seconds: 1),
                      ),
                    );
                  },
                ),
                Divider(),

                ListTile(
                  leading: Icon(Icons.help),
                  title: Text("Help & Support"),
                  trailing: Icon(Icons.arrow_forward_ios, size: 18),
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Help & Support Clicked"),
                        duration: Duration(seconds: 1),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 20),

          //log out
          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Logout Clicked"),
                    duration: Duration(seconds: 1),
                  ),
                );
              },
              icon: Icon(Icons.logout),
              label: Text("Log out"),
            ),
          ),
        ],
      ),
    );
  }
}
