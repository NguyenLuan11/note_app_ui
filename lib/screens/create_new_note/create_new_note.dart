import 'package:flutter/material.dart';
import 'package:note_app/screens/create_new_note/components/body.dart';
import 'package:note_app/screens/list_notes/list_notes.dart';

class CreateNewNote extends StatelessWidget {
  const CreateNewNote({
    super.key,
    required this.titleAppBar,
    this.titleNote,
    this.contentNote,
  });

  final String titleAppBar;
  final String? titleNote, contentNote;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titleAppBar),
        actions: [
          IconButton(
            onPressed: () {
              // Save new Note or Update Note

              // Redirect to list Notes
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ListNotes(),
                ),
              );
            },
            icon: const Icon(Icons.save_outlined),
          ),
        ],
        centerTitle: true,
      ),
      body: Body(
        titleNote: titleNote,
        contentNote: contentNote,
      ),
    );
  }
}
