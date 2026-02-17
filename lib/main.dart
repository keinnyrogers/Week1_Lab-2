import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Christofer Portfolio"),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person, size: 40),
                  ),
                  SizedBox(height: 10),
                  Text("Ongdico, Christofer John",
                      style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("About"),
            ),
            ListTile(
              leading: Icon(Icons.code),
              title: Text("Skills"),
            ),
            ListTile(
              leading: Icon(Icons.contact_mail),
              title: Text("Contact"),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(30),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue, Colors.indigo],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: const Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person, size: 60),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Ongdico, Christofer John",
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "BSIT 3.6 | Future Software Developer",
                    style: TextStyle(color: Colors.white70),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            const ListTile(
              leading: Icon(Icons.info, color: Colors.blue),
              title: Text("About Me"),
              subtitle: Text(
                  "Passionate IT student focused on mobile and web development."),
            ),

            const ListTile(
              leading: Icon(Icons.code, color: Colors.blue),
              title: Text("Skills"),
              subtitle: Text("Flutter • HTML • CSS • Java • Python"),
            ),

            const ListTile(
              leading: Icon(Icons.email, color: Colors.blue),
              title: Text("Contact"),
              subtitle: Text("christofer@email.com"),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {},
              child: const Text("View Projects"),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
