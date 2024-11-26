import 'package:flutter/material.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home', style: TextStyle(color: Colors.white, fontSize: 40),),
      centerTitle: true,
      backgroundColor: Colors.purple,),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.pinkAccent),
              child: Column(
                children: [
                  CircleAvatar(backgroundImage: AssetImage("lib/images/profil.png") ,
                  radius: 40,
                  ),
                  Text(
                    "Fati YAMANI",
                    style: TextStyle(color: Colors.black,fontSize: 20),
                  ),
                  Text(
                    "Fati.yamani@gmail.com",
                    style: TextStyle(color: Colors.black,fontSize: 15),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Covid Tracker'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            Divider(color: Colors.pink),
             ListTile(
              leading: Icon(Icons.home),
              title: Text('EMSI Chatbot'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            Divider(color: Colors.pink),
           ListTile(
              leading: Icon(Icons.settings),
              trailing: Icon(Icons.arrow_forward),
              title: Text('settings'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            Divider(color: Colors.pink),
             ListTile(
              leading: Icon(Icons.login),
              title: Text('logout'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            Divider(color: Colors.pink),
            
          ],
        ),
      ),
      body: Center(
        child: Text("Welcome to home page ",
      style: TextStyle(color: Colors.blueAccent,fontSize: 30),
      ),
      ) 
      
    );
  }
}