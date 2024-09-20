import 'package:flutter/material.dart';

void main() => runApp(ContactDetail());

class ContactDetail extends StatelessWidget {
  final String name;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Contact List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyContactDetailPage(title: 'Simple Contact List'),
    );
  }
}

class MyContactDetailPage extends StatefulWidget {
  MyContactDetailPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyContactDetailPageState createState() => _MyContactDetailPageState();
}

class _MyContactDetailPageState extends State<MyContactDetailPage> {
  final List<Map<String, dynamic>> contacts = [
    {
      'name': 'John Judah',
      'number': '2348031980943',
      'color': Colors.grey,
    },
    {
      'name': 'Bisola Kanbi',
      'number': '2348031980943',
      'color': Colors.pink,
    },
    {
      'name': 'Eghosa Iku',
      'number': '2348031980943',
      'color': Colors.orange,
    },
    {
      'name': 'Andrew Ndebuisi',
      'number': '2348034280943',
      'color': Colors.blue,
    },
    {
      'name': 'Arinze Dayo',
      'number': '2348031980943',
      'color': Colors.green,
    },
    {
      'name': 'Wakara Zimbu',
      'number': '2348031980943',
      'color': Colors.red,
    },
    {
      'name': 'Emaechi Chinedu',
      'number': '2348031980943',
      'color': Colors.yellow,
    },
    {
      'name': 'Osaretin Igbinomwanhia',
      'number': '2348031980943',
      'color': Colors.lightBlue,
    },
    {
      'name': 'John Judah',
      'number': '2348031980943',
      'color': Colors.grey,
    },
    {
      'name': 'Bisola Kanbi',
      'number': '2348031980943',
      'color': Colors.pink,
    },
    {
      'name': 'Eghosa Iku',
      'number': '2348031980943',
      'color': Colors.orange,
    },
    {
      'name': 'Andrew Ndebuisi',
      'number': '2348034280943',
      'color': Colors.blue,
    },
    {
      'name': 'Arinze Dayo',
      'number': '2348031980943',
      'color': Colors.green,
    },
    {
      'name': 'Wakara Zimbu',
      'number': '2348031980943',
      'color': Colors.red,
    },
    {
      'name': 'Emaechi Chinedu',
      'number': '2348031980943',
      'color': Colors.yellow,
    },
    {
      'name': 'Osaretin Igbinomwanhia',
      'number': '2348031980943',
      'color': Colors.lightBlue,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: (Text("name")),
      )
    );
  }
}