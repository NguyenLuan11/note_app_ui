import 'package:flutter/material.dart';
import 'package:note_app/contants.dart';
import 'package:note_app/screens/create_new_note/create_new_note.dart';
// import 'package:note_app/screens/list_notes/components/checkBox_select_item.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({
    super.key,
    required this.size,
    required this.title,
    required this.content,
    required this.date,
    required this.color,
  });

  final Size size;
  final String title, content, date;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        optionsDialog(context);
      },
      child: Container(
        width: size.width,
        height: 150,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 17),
              blurRadius: 27,
              spreadRadius: -17,
              color: kPrimaryColor,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                // const CheckBoxSelectItem(),
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                const Spacer(),
                const Icon(
                  Icons.date_range,
                  color: kPrimaryColor,
                ),
                Text(
                  date,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: kPrimaryColor,
                  ),
                ),
              ],
            ),
            Text(
              content,
              style: const TextStyle(fontSize: 17),
            ),
          ],
        ),
      ),
    );
  }

  void optionsDialog(BuildContext context) {
    // Create a AlertDialog.
    // ignore: unused_local_variable
    AlertDialog dialog = AlertDialog(
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 30,
          color: kPrimaryColor,
          fontWeight: FontWeight.bold,
        ),
      ),
      shape: const RoundedRectangleBorder(
          side: BorderSide(color: kPrimaryColor, width: 3),
          borderRadius: BorderRadius.all(Radius.circular(15))),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.amber,
                foregroundColor: Colors.black,
                padding: const EdgeInsets.all(17),
                textStyle: const TextStyle(fontSize: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
              ),
              child: const Row(
                children: [
                  Icon(Icons.edit),
                  SizedBox(width: 5),
                  Text("Edit"),
                ],
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CreateNewNote(
                      titleAppBar: "Edit note",
                      titleNote: title,
                      contentNote: content,
                    ),
                  ),
                );
              },
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.all(17),
                textStyle: const TextStyle(fontSize: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
              ),
              child: const Row(
                children: [
                  Icon(Icons.delete),
                  SizedBox(width: 5),
                  Text("Delete"),
                ],
              ),
              onPressed: () {
                // Navigator.of(context).pop(false); // Return false
              },
            ),
          ],
        ),
      ],
    );
    // Call showDialog function to show dialog.
    // ignore: unused_local_variable
    Future futureValue = showDialog(
      context: context,
      builder: (BuildContext context) {
        return dialog;
      },
    );
  }
}
