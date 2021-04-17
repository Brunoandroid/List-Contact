import 'package:flutter/material.dart';

const _titleAppBar = 'Create Contact';

class CreatePerson extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titleAppBar),
      ),
    );
  }
}
