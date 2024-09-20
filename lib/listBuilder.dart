Edit
Copy code
import 'package:chat_app/contactDetailsPage.dart';
import 'package:flutter/material.dart';

void main() => runApp(ChatList());

class ChatList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Contact List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyChatListPage(title: 'Simple Contact List'),
    );
  }
}

class MyChatListPage extends StatefulWidget {
  MyChatListPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyChatListPageState createState() => _MyChatListPageState();
}

class _MyChatListPageState extends State<MyChatListPage> {
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
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: contacts[index]['color'],
              child: Icon(Icons.person),
            ),
            title: Text(contacts[index]['name']),
            subtitle: Text(contacts[index]['number']),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ContactDetail(
                    name: contacts[index]['name'],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}