import 'package:flutter/material.dart';
import 'package:list_contact/screens/contact/list.dart';

void main() => runApp(ListContactApp());

class ListContactApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.lightBlue[700],
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Colors.lightBlue[700],
          ),
        ),
      ),
      home: ListContact(),
    );
  }
}