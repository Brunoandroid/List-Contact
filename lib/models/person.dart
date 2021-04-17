class Person {
  final String namePerson;
  final String city;

  Person(this.namePerson, this.city);

  @override
  String toString() {
    return 'Nome: $namePerson | Cidade: $city';
  }

}
