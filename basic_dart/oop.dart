import 'person_private.dart';

void main() {
  Person person = Person();
  person.name = 'John Doe';
  person.shout();

  PersonPrivateName personPrivateName = PersonPrivateName(money: 100);
  // personPrivateName._name = 'John wick'; // Error: The setter '_name' isn't defined for the class 'PersonPrivateName'.
  personPrivateName.firstName = 'Wick'; // This is how you set the name
  personPrivateName.shout();
}

class Person {
  late String name;

  void shout() {
    print('I\'m $name');
  }
}

