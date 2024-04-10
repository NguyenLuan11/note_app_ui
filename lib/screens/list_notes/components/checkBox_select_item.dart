// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:note_app/contants.dart';

class CheckBoxSelectItem extends StatefulWidget {
  const CheckBoxSelectItem({super.key});

  @override
  State<CheckBoxSelectItem> createState() => _CheckBoxSelectItemState();
}

class _CheckBoxSelectItemState extends State<CheckBoxSelectItem> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: kPrimaryColor,
      hoverColor: kPrimaryLightColor,
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value;
        });
      },
    );
  }
}
