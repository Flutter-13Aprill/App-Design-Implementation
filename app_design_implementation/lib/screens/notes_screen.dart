import 'package:flutter/material.dart';

class NotesScreen extends StatefulWidget {
  @override
  _NotesScreenState createState() => _NotesScreenState();
}


//NotesScreen: A page that displays the notes that are added.
//_notes: A list to store the notes that are added by the user.
//_controller: A controller for the text field (TextField) to input the notes.
class _NotesScreenState extends State<NotesScreen> {
  final List<String> _notes = [];
  final TextEditingController _controller = TextEditingController();


//The text in \_controller is cleared after adding the note.
//The keyboard is hidden using FocusScope.of(context).unfocus().
  void _addNote() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        _notes.add(_controller.text);
      });
      _controller.clear();
      FocusScope.of(context).unfocus();
    }
  }

//_deleteNoteDialog: A function to display a confirmation dialog for deleting the note.
  void _deleteNoteDialog(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Confirm Deletion"),
          content: const Text("Are you sure you want to delete this note?"),
          actions: [
            TextButton(
              child: const Text("Cancel"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text("Delete", style: TextStyle(color: Colors.red)),
              onPressed: () {
                setState(() {
                  _notes.removeAt(index);
                });
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 185, 168, 168),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 185, 168, 168),
        elevation: 0,
        automaticallyImplyLeading: false,
        title: const Text(
          'Notes',
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
        centerTitle: true,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu, color: Colors.black),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
      ),

      //Drawer: Contains options like "Profile" and "Settings".
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 185, 168, 168),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.notes, size: 50, color: Colors.white),
                  SizedBox(height: 10),
                  Text(
                    'Notes App',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person, color: Colors.blue),
              title: const Text('Profile'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings, color: Colors.blue),
              title: const Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                  hintText: 'Enter a new note',
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.add, color: Colors.blue),
                    onPressed: _addNote,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.separated(
              itemCount: _notes.length,
              itemBuilder: (context, index) {
                return ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                  title: Text(
                    _notes[index],
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete, color: Color.fromARGB(255, 164, 48, 39)),
                    onPressed: () => _deleteNoteDialog(index),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const Divider(
                  color: Color.fromARGB(255, 195, 213, 103),
                  thickness: 1.5,
                  height: 5,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
