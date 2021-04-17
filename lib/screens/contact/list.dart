import 'package:flutter/material.dart';
import 'package:list_contact/models/person.dart';
import 'package:list_contact/screens/contact/create.dart';

const String _titleAppBar = 'Home';

class ListContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titleAppBar),
      ),
      body: Column(
        children: [
          ItemContact(Person('Bruno Freitas', 'Aracaju')),
          ItemContact(Person('Maria Joaquina', 'São Paulo')),
          ItemContact(Person('Carla Souza', 'Bahia')),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return CreatePerson();
          })).then((person) {
            if(person != null){

            };
          });
        },
      ),
    );
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
