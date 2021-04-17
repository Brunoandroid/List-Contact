import 'package:flutter/material.dart';

class Editor extends StatelessWidget {
  final TextEditingController controller;

  final String textRotulo;
  final IconData icon;

  Editor(this.controller, this.textRotulo, this.icon);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          icon: Icon(icon),
          labelText: textRotulo,
        ),
      ),
    );
  }
}
