import 'package:flutter/material.dart';
import 'package:list_contact/models/person.dart';
import 'package:list_contact/screens/contact/create.dart';

const String _titleAppBar = 'Home';

class ListContact extends StatefulWidget {
  final List<Person> _listPerson = [];

  @override
  _ListContactState createState() => _ListContactState();

}

class _ListContactState extends State<ListContact> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titleAppBar),
      ),
      body: ListView.builder(
        itemCount: widget._listPerson.length,
        itemBuilder: (context, indice) {
          final person = widget._listPerson[indice];
          return ItemContact(person);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return CreatePerson();
          })).then((person) => upgrade(person));
        },
      ),
    );
  }

  void upgrade(person) {
    if (person != null) {
      setState(() {
        widget._listPerson.add(person);
      });
    }
  }
}

class ItemContact extends StatelessWidget {
  final Person _person;

  ItemContact(this._person);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.person_outline),
        title: Text(_person.namePerson),
        subtitle: Text(_person.city),
      ),
    );
  }
}
