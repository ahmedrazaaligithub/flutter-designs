import 'dart:async';

import 'package:flutter/material.dart';
// import 'package:splachscreen/home.dart';

void main() {
  
}

class home extends StatelessWidget {
    final String email;
  const home({Key? key, required this.email}):super(key:key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'chat app'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
  
     return Scaffold(
        body:GridView(
          gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20
          ),
          children: [
            Container(
            color: Colors.black,
              child: Column(
              
                children: [
                  Icon(Icons.design_services,color:Colors.white,),
                  Text('this.email' ,style: TextStyle(color: Colors.white,fontSize: 32),)
                ],
              ),
            ),
             Container(
            color: Colors.black,
              child: Column(
                
                children: [
                  Icon(Icons.info,color:Colors.white,),
                  Text("about" ,style: TextStyle(color: Colors.white,fontSize: 32),)
                ],
              ),
            ),
             Container(
            color: Colors.black,
              child: Column(
                
                children: [
                  Icon(Icons.comment,color:Colors.white,),
                  Text("complain" ,style: TextStyle(color: Colors.white,fontSize: 32),)
                ],
              ),
            ),
             Container(
            color: Colors.black,
              child: Column(
                
                children: [
                  Icon(Icons.phone,color:Colors.white,),
                  Text("contact" ,style: TextStyle(color: Colors.white,fontSize: 32),)
                ],
              ),
            ),
             Container(
            color: Colors.black,
              child: Column(
                
                children: [
                  Icon(Icons.phone,color:Colors.white,),
                  Text("help" ,style: TextStyle(color: Colors.white,fontSize: 32),)
                ],
              ),
            ),
             Container(
            color: Colors.black,
              child: Column(
                
                children: [
                  Icon(Icons.logout,color:Colors.white,),
                  Text("Logout" ,style: TextStyle(color: Colors.white,fontSize: 32),)
                ],
              ),
            ),
            
          ],
         )
      );
  }
}
  