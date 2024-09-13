import 'package:flutter/material.dart';
import 'package:mezan/Cache/CacheHelper.dart';
import 'package:mezan/colors.dart';
import 'package:mezan/database.dart';

class EqsaatScreen extends StatefulWidget {
  const EqsaatScreen({super.key});

  @override
  State<EqsaatScreen> createState() => _EqsaatScreenState();
}

class _EqsaatScreenState extends State<EqsaatScreen> {

  List<Map<String, dynamic>> notes = [
    {"monthlyPayment": "1000", "date": "22/6", "notes": ""},
  ];

  void refreshNotes() async {
    final data = await NotesDatabase.instance.getNotes();
    setState(() {
      notes = data;
    });
  }

  @override
  initState() {
    super.initState();
    refreshNotes();
  }
  void addNote(Map<String, dynamic> newNote) async {
  await NotesDatabase.instance.addNote(newNote['monthlyPayment']);
  setState(() {
  notes.add(newNote);
  });
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 67, 133, 127),
        title: const Text(
          "ميزان",
          style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontFamily: "Lemonada-VariableFont_wght.ttf"),
        ),
      ),
      backgroundColor: kGreen,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 20, right: 20),
                  child: CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage("assets/logo (2).png"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, right: 20),
                  child: Container(
                    height: 140,
                    width: 250,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: const Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        "في هذه الغرفه يتم عرض او اضافه او حذف الاقساط الملتزم بها حاليا",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily:
                                "ReadexPro-VariableFont_HEXP,wght.ttf"),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 100),
            Table(
              border: TableBorder.all(),
              columnWidths: const {
                0: FlexColumnWidth(4),
                1: FlexColumnWidth(4),
                2: FlexColumnWidth(4),
              },
              children: [
                TableRow(children: [
                  _buildTableCell("القسط الشهري"),
                  _buildTableCell("الميعاد"),
                  _buildTableCell("ملاحظات"),
                ]),
                ...notes.map((note) {
                  return TableRow(children: [
                    _buildTableCell(note['monthlyPayment']),
                    _buildTableCell(note['date']),
                    _buildTableCell(note['notes']),
                  ]);
                }).toList(),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 82, 161, 85),
        onPressed: showAddNoteDialog,
        child: const Icon(Icons.add, size: 30),
      ),
    );
  }

  Widget _buildTableCell(String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(text, textAlign: TextAlign.center),
    );
  }

  void showAddNoteDialog() {
    String monthlyPayment = '';
    String dueDate = '';
    String notes = '';
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text(
            "إضافة قسط جديد",
            style: TextStyle(fontSize: 20),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: "القسط الشهري",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onChanged: (value) {
                  monthlyPayment = value;
                },
              ),
              const SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  hintText: "موعد القسط",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onChanged: (value) {
                  dueDate = value;
                },
              ),
              const SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  hintText: "ملاحظات",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onChanged: (value) {
                  notes = value;
                },
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                "إلغاء",
                style: TextStyle(
                    fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
            ElevatedButton(
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.green.shade200,
  ),
  onPressed: () {
    // Save the data using CacheHelper (optional, if you want to persist locally)
    CacheHelper.saveData(key: "date", value: dueDate.toString());
    CacheHelper.saveData(key: "monthlyPayment", value: monthlyPayment.toString());
    CacheHelper.saveData(key: "notes", value: notes.toString());

    if (monthlyPayment.isNotEmpty && dueDate.isNotEmpty) {
      Map<String, dynamic> newNote = {
        "monthlyPayment": monthlyPayment,
        "date": dueDate,
        "notes": notes,
      };
      
      // Add the new note
      addNote(newNote);

      // Close the dialog
      Navigator.of(context).pop();
    }
  },
  child: const Text(
    "إضافة",
    style: TextStyle(
      fontSize: 20, 
      color: Colors.black, 
      fontWeight: FontWeight.bold
    ),
  ),
),

          ],
        );
      },
    );
  }
}
