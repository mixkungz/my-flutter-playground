import 'person_private.dart';

void main() {
  Person person = Person('John Doe');
  person.shout();

  PersonPrivateName personPrivateName = PersonPrivateName(money: 100);
  // personPrivateName._name = 'John wick'; // Error: The setter '_name' isn't defined for the class 'PersonPrivateName'.
  personPrivateName.firstName = 'Wick'; // This is how you set the name
  personPrivateName.shout();

  Wife wife = Wife(name: 'Test', shoutCount: 10);
  wife.shout();
  wife.orderHusband();
}

class Person {
  late String name;

  Person(this.name);

  void shout() {
    print('I\'m $name');
  }
}

class Wife extends Person with ExecutiveOrder {
  late int _shoutCount;

  // Wife({required String name, required int shoutCount}){
  //   super(name);
  //   _shoutCount = shoutCount;
  // }

  Wife({required String name, required int shoutCount}) : super(name) {
    _shoutCount = shoutCount;
  }
}

mixin ExecutiveOrder {
  void orderHusband() {
    print('I\'m ordering my husband');
  }
}
