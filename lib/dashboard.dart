import 'dart:async';

import 'package:flutter/material.dart';
// import 'package:splachscreen/dashboard.dart';

void main() {
  runApp(const dashboard());
}

class dashboard extends StatelessWidget {
  const dashboard({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyDashboardPage(title: 'chat app'),
    );
  }
}

class MyDashboardPage extends StatefulWidget {
  const MyDashboardPage({super.key, required this.title});

  final String title;

  @override
  State<MyDashboardPage> createState() => _MyDashboardPageState();
}

class _MyDashboardPageState extends State<MyDashboardPage> {
  @override
  Widget build(BuildContext context) {
   final List titles = [
    "John Doe", "Jane Smith", "Emily Johnson",
    "Michael Brown", "Sarah Davis", "David Wilson", "Laura Garcia", "Chris Lee"
  ];

  final List images = [
    "https://images.unsplash.com/photo-1601850494422-3cf14624b0b3?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YW5pbWV8ZW58MHx8MHx8fDA%3D",
    "https://images.unsplash.com/photo-1601850494422-3cf14624b0b3?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YW5pbWV8ZW58MHx8MHx8fDA%3D",
    "https://plus.unsplash.com/premium_photo-1666700698946-fbf7baa0134a?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8YW5pbWV8ZW58MHx8MHx8fDA%3D",
    "https://images.unsplash.com/photo-1607604276583-eef5d076aa5f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8YW5pbWV8ZW58MHx8MHx8fDA%3D",
    "https://plus.unsplash.com/premium_photo-1671656349322-41de944d259b?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8cHJvZmlsZSUyMGltYWdlc3xlbnwwfHwwfHx8MA%3D%3D",
    "https://plus.unsplash.com/premium_photo-1689977968861-9c91dbb16049?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZSUyMHBpY3R1cmV8ZW58MHx8MHx8fDA%3D",
    "https://plus.unsplash.com/premium_photo-1688572454849-4348982edf7d?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8cHJvZmlsZSUyMHBpY3R1cmV8ZW58MHx8MHx8fDA%3D",
    "https://plus.unsplash.com/premium_photo-1689539137236-b68e436248de?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8cHJvZmlsZSUyMHBpY3R1cmV8ZW58MHx8MHx8fDA%3D",
  ];

  final List subtitles = [
    "Just wanted to say hi!",
    "Let's catch up soon.",
    "Great job on the project!",
    "See you at the meeting.",
    "Happy to help anytime!",
    "Let's discuss this further.",
    "I’ll get back to you soon.",
    "Checking in to see how you’re doing.",
  ];

  final List trailingTexts = [
    "Online", "Busy", "Offline", "Away", "In a call", "Available", "At lunch", "Idle"
  ];

  final List<Color> trailingColors = [
    Colors.green, Colors.orange, Colors.red, Colors.yellow, Colors.blue, Colors.green, Colors.orange, Colors.grey
  ];
// print()
     return Scaffold(
        body:ListView.builder(
          itemCount: titles.length,
          itemBuilder: (context,index){
            return Card(
                  child: ListTile(
                    title:Text(titles[index]),
                    subtitle:Text(subtitles[index]),
                    leading:Text(images[index]),
                    trailing:Text(trailingTexts[index], style: TextStyle(color:trailingColors[index]),),
                  )
                  ,
            );
          },
        )
      );
  }
}
  // children: [
  //           Card(
  //             child: ListTile(
  //               title: Text(
  //                 "John Doe",
  //                 style: TextStyle(fontWeight: FontWeight.bold),
  //               ),
  //               leading: CircleAvatar(
  //                 backgroundImage: NetworkImage(
  //                   "https://images.unsplash.com/photo-1601850494422-3cf14624b0b3?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YW5pbWV8ZW58MHx8MHx8fDA%3D",
  //                 ),
  //               ),
  //               subtitle: Text(
  //                 "Just wanted to say hi!",
  //                 style: TextStyle(),
  //               ),
  //               trailing: Text(
  //                 "Online",
  //                 style: TextStyle(color: Colors.green),
  //               ),
  //             ),
  //           ),
  //           Card(
  //             child: ListTile(
  //               title: Text(
  //                 "Jane Smith",
  //                 style: TextStyle(fontWeight: FontWeight.bold),
  //               ),
  //               leading: CircleAvatar(
  //                 backgroundImage: NetworkImage(
  //                   "https://images.unsplash.com/photo-1601850494422-3cf14624b0b3?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YW5pbWV8ZW58MHx8MHx8fDA%3D",
  //                 ),
  //               ),
  //               subtitle: Text(
  //                 "Let's catch up soon.",
  //                 style: TextStyle(),
  //               ),
  //               trailing: Text(
  //                 "Busy",
  //                 style: TextStyle(color: Colors.orange),
  //               ),
  //             ),
  //           ),
  //           Card(
  //             child: ListTile(
  //               title: Text(
  //                 "Emily Johnson",
  //                 style: TextStyle(fontWeight: FontWeight.bold),
  //               ),
  //               leading: CircleAvatar(
  //                 backgroundImage: NetworkImage(
  //                   "https://plus.unsplash.com/premium_photo-1666700698946-fbf7baa0134a?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8YW5pbWV8ZW58MHx8MHx8fDA%3D",
  //                 ),
  //               ),
  //               subtitle: Text(
  //                 "Great job on the project!",
  //                 style: TextStyle(),
  //               ),
  //               trailing: Text(
  //                 "Offline",
  //                 style: TextStyle(color: Colors.red),
  //               ),
  //             ),
  //           ),
  //           Card(
  //             child: ListTile(
  //               title: Text(
  //                 "Michael Brown",
  //                 style: TextStyle(fontWeight: FontWeight.bold),
  //               ),
  //               leading: CircleAvatar(
  //                 backgroundImage: NetworkImage(
  //                   "https://images.unsplash.com/photo-1607604276583-eef5d076aa5f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8YW5pbWV8ZW58MHx8MHx8fDA%3D",
  //                 ),
  //               ),
  //               subtitle: Text(
  //                 "See you at the meeting.",
  //                 style: TextStyle(),
  //               ),
  //               trailing: Text(
  //                 "Away",
  //                 style: TextStyle(color: Colors.yellow),
  //               ),
  //             ),
  //           ),
  //           Card(
  //             child: ListTile(
  //               title: Text(
  //                 "Sarah Davis",
  //                 style: TextStyle(fontWeight: FontWeight.bold),
  //               ),
  //               leading: CircleAvatar(
  //                 backgroundImage: NetworkImage(
  //                   "https://plus.unsplash.com/premium_photo-1671656349322-41de944d259b?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8cHJvZmlsZSUyMGltYWdlc3xlbnwwfHwwfHx8MA%3D%3D",
  //                 ),
  //               ),
  //               subtitle: Text(
  //                 "Happy to help anytime!",
  //                 style: TextStyle(),
  //               ),
  //               trailing: Text(
  //                 "In a call",
  //                 style: TextStyle(color: Colors.blue),
  //               ),
  //             ),
  //           ),
  //           Card(
  //             child: ListTile(
  //               title: Text(
  //                 "David Wilson",
  //                 style: TextStyle(fontWeight: FontWeight.bold),
  //               ),
  //               leading: CircleAvatar(
  //                 backgroundImage: NetworkImage(
  //                   "https://plus.unsplash.com/premium_photo-1689977968861-9c91dbb16049?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZSUyMHBpY3R1cmV8ZW58MHx8MHx8fDA%3D",
  //                 ),
  //               ),
  //               subtitle: Text(
  //                 "Let's discuss this further.",
  //                 style: TextStyle(),
  //               ),
  //               trailing: Text(
  //                 "Available",
  //                 style: TextStyle(color: Colors.green),
  //               ),
  //             ),
  //           ),
  //           Card(
  //             child: ListTile(
  //               title: Text(
  //                 "Laura Garcia",
  //                 style: TextStyle(fontWeight: FontWeight.bold),
  //               ),
  //               leading: CircleAvatar(
  //                 backgroundImage: NetworkImage(
  //                   "https://plus.unsplash.com/premium_photo-1688572454849-4348982edf7d?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8cHJvZmlsZSUyMHBpY3R1cmV8ZW58MHx8MHx8fDA%3D",
  //                 ),
  //               ),
  //               subtitle: Text(
  //                 "I’ll get back to you soon.",
  //                 style: TextStyle(),
  //               ),
  //               trailing: Text(
  //                 "At lunch",
  //                 style: TextStyle(color: Colors.orange),
  //               ),
  //             ),
  //           ),
  //           Card(
  //             child: ListTile(
  //               title: Text(
  //                 "Chris Lee",
  //                 style: TextStyle(fontWeight: FontWeight.bold),
  //               ),
  //               leading: CircleAvatar(
  //                 backgroundImage: NetworkImage(
  //                   "https://plus.unsplash.com/premium_photo-1689539137236-b68e436248de?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8cHJvZmlsZSUyMHBpY3R1cmV8ZW58MHx8MHx8fDA%3D",
  //                 ),
  //               ),
  //               subtitle: Text(
  //                 "Checking in to see how you’re doing.",
  //                 style: TextStyle(),
  //               ),
  //               trailing: Text(
  //                 "Idle",
  //                 style: TextStyle(color: Colors.grey),
  //               ),
  //             ),
  //           ),

  //         ],
