import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      colorSchemeSeed: Colors.teal,
      brightness: Brightness.light,
      useMaterial3: true,
    ),
    home: const HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My CV",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [

            // HEADER
            Row(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("assets/images/WhatsApp Image 2026-10-30 at 23.19.51.jpeg"),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Cebolenkhosi Dlamini",
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Mobile App Developer",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "I enjoy turning ideas into simple, friendly apps that people actually use.",
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),

            // CONTACT
            Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.contact_mail),
                        SizedBox(width: 10),
                        Text(
                          "Contact",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    ListTile(
                      leading: Icon(Icons.email),
                      title: Text("Email"),
                      subtitle: Text("dlaminicebo@gmail.com"),
                    ),
                    ListTile(
                      leading: Icon(Icons.phone),
                      title: Text("Phone"),
                      subtitle: Text("7800 1111"),
                    ),
                    ListTile(
                      leading: Icon(Icons.link),
                      title: Text("GitHub"),
                      subtitle: Text("github.com/cebolenkhosi-demo"),
                    ),
                  ],
                ),
              ),
            ),

            // TECHNICAL SKILLS
            Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.build),
                        SizedBox(width: 10),
                        Text(
                          "Technical Skills",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    Row(
                      children: [
                        Chip(label: Text("Flutter")),
                        SizedBox(width: 8),
                        Chip(label: Text("Dart")),
                        SizedBox(width: 8),
                        Chip(label: Text("PHP")),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Chip(label: Text("MySQL")),
                        SizedBox(width: 8),
                        Chip(label: Text("Git")),
                        SizedBox(width: 8),
                        Chip(label: Text("Figma")),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // SOFT SKILLS
            Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.emoji_people),
                        SizedBox(width: 10),
                        Text(
                          "Soft Skills",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    Text("Communication"),
                    SizedBox(height: 4),

                    SizedBox(height: 12),
                    Text("Teamwork"),
                    SizedBox(height: 4),

                    SizedBox(height: 12),
                    Text("Time Management"),
                    SizedBox(height: 4),

                    SizedBox(height: 12),
                    Text("Creativity"),
                    SizedBox(height: 4),

                  ],
                ),
              ),
            ),

            // WORK EXPERIENCE
            Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.work),
                        SizedBox(width: 10),
                        Text(
                          "Work Experience",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    ListTile(
                      leading: Icon(Icons.phone_android),
                      title: Text("Student Portal App"),
                      subtitle: Text("Project | 2026"),
                    ),
                    ListTile(
                      leading: Icon(Icons.shopping_cart),
                      title: Text("Online Bookshop Website"),
                      subtitle: Text("Project | 2026"),
                    ),
                    ListTile(
                      leading: Icon(Icons.business),
                      title: Text("Tech Solutions Eswatini"),
                      subtitle: Text("Software Intern | Jun 2027 - Aug 2027"),
                    ),
                  ],
                ),
              ),
            ),

            // EDUCATION
            Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.school),
                        SizedBox(width: 10),
                        Text(
                          "Education & Certifications",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    ListTile(
                      leading: Icon(Icons.menu_book),
                      title: Text("BSc in Information Technology"),
                      subtitle: Text("Limkokwing University of Craetive Technology | 2025 - 2029"),
                    ),
                    ListTile(
                      leading: Icon(Icons.workspace_premium),
                      title: Text("Flutter Basics - Online Course"),
                      subtitle: Text("Certificate | 2026"),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}