// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:note_app/contants.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
    this.titleNote,
    this.contentNote,
  });

  final String? titleNote, contentNote;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/notes_3.png'),
            fit: BoxFit.fill,
          ),
        ),
      ),
      SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                decoration: const BoxDecoration(
                  color: Colors.white70,
                ),
                child: Column(
                  children: [
                    TextFormField(
                      initialValue: titleNote,
                      maxLines: 1,
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.justify,
                      decoration: InputDecoration(
                        hintText: "Title",
                        hintStyle: const TextStyle(
                          color: kPrimaryColor,
                          fontSize: 33,
                          fontWeight: FontWeight.bold,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(
                            color: kPrimaryColor,
                            style: BorderStyle.solid,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    TextFormField(
                      initialValue: contentNote,
                      maxLines: 10,
                      style: const TextStyle(
                        fontSize: 27,
                      ),
                      textAlign: TextAlign.justify,
                      decoration: InputDecoration(
                        hintText: "Content...",
                        hintStyle: const TextStyle(
                          color: kPrimaryColor,
                          fontSize: 27,
                          fontWeight: FontWeight.bold,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(
                            color: kPrimaryColor,
                            style: BorderStyle.solid,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        DotsColor(
                          color: Colors.blue,
                        ),
                        DotsColor(
                          color: Colors.amber,
                        ),
                        DotsColor(
                          color: Colors.green,
                        ),
                        DotsColor(
                          color: Colors.red,
                        ),
                        DotsColor(
                          color: Colors.brown,
                        ),
                        DotsColor(
                          color: Colors.purple,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}

class DotsColor extends StatefulWidget {
  const DotsColor({
    super.key,
    required this.color,
    this.isSelected = false,
  });

  final Color color;
  final bool isSelected;

  @override
  State<DotsColor> createState() => _DotsColorState();
}

class _DotsColorState extends State<DotsColor> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        height: 40,
        width: 40,
        margin: const EdgeInsets.symmetric(horizontal: 10),
        padding: const EdgeInsets.all(3.5),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: isSelected ? widget.color : Colors.transparent,
          ),
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: widget.color,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
