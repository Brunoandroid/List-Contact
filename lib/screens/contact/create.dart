import 'package:flutter/material.dart';
import 'package:list_contact/components/editor.dart';
import 'package:list_contact/models/person.dart';

const _titleAppBar = 'Create Contact';

const _rotuloCampName = 'Nome Completo';
const _rotuloCampCity = 'Cidade';

class CreatePerson extends StatefulWidget {
  @override
  _CreatePersonState createState() => _CreatePersonState();
}

class _CreatePersonState extends State<CreatePerson> {
  final TextEditingController _controllerCampNome = TextEditingController();
  final TextEditingController _controllerCampCity = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titleAppBar),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Editor(
              _controllerCampNome,
              _rotuloCampName,
              Icons.person,
            ),
            Editor(
              _controllerCampCity,
              _rotuloCampCity,
              Icons.home_sharp,
            ),
            ElevatedButton(
              child: Text('Adicionar'),
              onPressed: () => createPerson(context),
            ),
          ],
        ),
      ),
    );
  }

  void createPerson(BuildContext context) {
    final String namePerson = _controllerCampNome.text;
    final String cityPerson = _controllerCampCity.text;

    final Person person = Person(namePerson, cityPerson);

    if (person != null) {
      Navigator.pop(context, person);
    }
  }
}
