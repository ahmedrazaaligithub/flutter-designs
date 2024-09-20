import 'dart:async';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const TableData());
}

class TableData extends StatelessWidget {
  const TableData({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyTableDataPage(title: 'Chat App'),
    );
  }
}

class MyTableDataPage extends StatefulWidget {
  const MyTableDataPage({super.key, required this.title});

  final String title;

  @override
  State<MyTableDataPage> createState() => _MyTableDataPageState();
}

class _MyTableDataPageState extends State<MyTableDataPage> {
  double urduMarks = 0;
  double englishMarks = 0;
  double computerMarks = 0;
  String english = '';
  String urdu = '';
  String comp = '';
  double total = 0;
  double percentage = 0;
  String grade ='F';

  void getCredentials() {
    try {
      urduMarks = double.parse(urdu);
      englishMarks = double.parse(english);
      computerMarks = double.parse(comp);
      
      // Calculate total and percentage
      total = urduMarks + englishMarks + computerMarks;
      percentage = (total * 100) / 300; // Assuming 300 is the max total 
      if(urduMarks <0 || urduMarks >100 || englishMarks<0 || englishMarks>100||computerMarks<0 || computerMarks>100){
        Fluttertoast.showToast(msg:"invalid numbers",timeInSecForIosWeb: 6);
      }else{

      if(percentage >= 90) {
        grade = 'A+';
      }
      else if(percentage >= 80) {
        grade = 'A';
      }
      else if(percentage >= 70) {
        grade = 'b';
      }
      else{
        grade="Fail";
      }
       urduMarks =0;
        englishMarks=0;
        computerMarks=0;
      }
      // Trigger UI update
      setState(() {});
    } catch (e) {
      print("Error parsing marks: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 22.0),
              Container(
                constraints: BoxConstraints(maxWidth: 400),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "Urdu",
                    labelText: "Write your Urdu marks",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                  ),
                  onChanged: (value) => setState(() => urdu = value),
                ),
              ),
              SizedBox(height: 22.0),
              Container(
                constraints: BoxConstraints(maxWidth: 400),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "English",
                    labelText: "Write your English marks",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                  ),
                  onChanged: (value) => setState(() => english = value),
                ),
              ),
              SizedBox(height: 22.0),
              Container(
                constraints: BoxConstraints(maxWidth: 400),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "Computer",
                    labelText: "Write your Computer marks",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                  ),
                  onChanged: (value) => setState(() => comp = value),
                ),
              ),
              SizedBox(height: 22.0),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Confirm Calculation'),
                        content: const Text('Do you want to calculate the results?'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop(); // Close the dialog
                            },
                            child: const Text('No'),
                          ),
                          TextButton(
                            onPressed: () {
                              getCredentials(); // Calculate the results
                              Navigator.of(context).pop(); // Close the dialog
                            },
                            child: const Text('Yes'),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: const Text('Calculate'),
              ),
              SizedBox(height: 22.0),
              DataTable(
                columns: [
                  DataColumn(label: Text('English')),
                  DataColumn(label: Text('Urdu')),
                  DataColumn(label: Text('Computer')),
                  DataColumn(label: Text('Total')),
                  DataColumn(label: Text('Percentage')),
                  DataColumn(label: Text('Grade')),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text(englishMarks.toString())),
                    DataCell(Text(urduMarks.toString())),
                    DataCell(Text(computerMarks.toString())),
                    DataCell(Text(total.toString())),
                    DataCell(Text(percentage.toStringAsFixed(2) + '%')),
                    DataCell(Text(grade)),
                  ]),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
