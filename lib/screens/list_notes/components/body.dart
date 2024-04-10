import 'package:flutter/material.dart';
import 'package:note_app/contants.dart';
import 'package:note_app/screens/list_notes/components/note_item.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(children: [
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/notes_2.png'),
          ),
          color: kPrimaryLightColor,
        ),
      ),
      SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                NoteItem(
                  size: size,
                  title: "Title 1",
                  date: "08/04/2024",
                  content: "content 1........",
                  color: Colors.white,
                ),
                NoteItem(
                  size: size,
                  title: "Title 2",
                  date: "08/04/2024",
                  content: "content 2........",
                  color: Colors.white,
                ),
                NoteItem(
                  size: size,
                  title: "Title 3",
                  date: "08/04/2024",
                  content: "content 3........",
                  color: Colors.white,
                ),
                NoteItem(
                  size: size,
                  title: "Title 4",
                  date: "08/04/2024",
                  content: "content 4........",
                  color: Colors.white,
                ),
                NoteItem(
                  size: size,
                  title: "Title 5",
                  date: "08/04/2024",
                  content: "content 5........",
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    ]);
  }
}
