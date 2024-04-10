import 'package:flutter/material.dart';
import 'package:note_app/contants.dart';
import 'package:note_app/screens/create_new_note/create_new_note.dart';
import 'package:note_app/screens/list_notes/components/body.dart';
import 'package:note_app/screens/list_notes/components/list_view_item.dart';

class ListNotes extends StatelessWidget {
  const ListNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notes"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.logout),
          ),
        ],
        automaticallyImplyLeading: true,
        centerTitle: true,
      ),
      body: const Body(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColor,
        foregroundColor: Colors.white,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CreateNewNote(
                titleAppBar: "Create a new note",
              ),
            ),
          );
        },
        child: const Icon(
          Icons.add,
          size: 37,
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: kPrimaryLightColor,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  ListviewItem(
                    text: 'Profile',
                    icon: const Icon(
                      Icons.supervised_user_circle,
                      size: 30,
                    ),
                    press: () {},
                  ),
                  const SizedBox(height: 20),
                  ListviewItem(
                    text: 'Setting',
                    icon: const Icon(
                      Icons.settings,
                      size: 30,
                    ),
                    press: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
