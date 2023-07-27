// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 225, 191, 191),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/photo_5816626303363824994_x.jpg'),
              ),
              Text("Samah Shamma",
              style: TextStyle(
                fontFamily: 'CrimsonText',
                fontSize: 30,
                color: Colors.black,
                fontWeight: FontWeight.bold
              ),
              ),
              Text("SWE student with mionr in AI",

              style: TextStyle(
                color: Color.fromARGB(255, 128, 53, 3),
                fontSize: 15,
                fontWeight: FontWeight.bold,
                fontFamily: 'CrimsonText',
              ),
              ),
              
              SizedBox(
                width: 200,
                height: 20,
                child: Divider(
                  color: Color.fromARGB(255, 34, 111, 45),
                  ),
              ),
              
              Card(
                margin: EdgeInsets.all(10),
                child: ListTile(
                  leading: Icon(
                      Icons.phone,
                      color: Color.fromARGB(255, 24, 205, 45),
                    ),
                    title: Text("055385801",
                    style: TextStyle( 
                    color: Colors.black,
                    fontSize: 20,
                    ),
                  ),
                ),
              ),

              Card(
                margin: EdgeInsets.all(10),
                child: ListTile(
                  leading: Icon(
                      Icons.email,
                      color: Color.fromARGB(255, 24, 205, 45),
                    ),
                    title: Text("samahr.shamma@gmail.com",
                    style: TextStyle( 
                    color: Colors.black,
                    fontSize: 20,
                    ),
                  ),
                ),
              ),

              Card(
                margin: EdgeInsets.all(10),
                child: ListTile(
                  leading: Icon(
                      Icons.account_circle,
                      color: Color.fromARGB(255, 24, 205, 45),
                    ),
                    title: Text("@Samah Shamma",
                    style: TextStyle( 
                    color: Colors.black,
                    fontSize: 20,
                    ),
                  ),
                ),
              ),

              Card(
                margin: EdgeInsets.all(10),
                child: ListTile(
                  leading: Icon(
                      Icons.account_tree,
                      color: Color.fromARGB(255, 24, 205, 45),
                    ),
                    title: Text("Samah022",
                    style: TextStyle( 
                    color: Colors.black,
                    fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


