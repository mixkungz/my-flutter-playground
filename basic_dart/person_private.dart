import 'oop.dart';

class PersonPrivateName {
  String? _name;
  late String _firstName;
  late int _tall;
  late double _money;


  PersonPrivateName({required double money}){
    this._tall = 100;
    this._money = money;
  }

  set firstName(String firstName) {
    _firstName = firstName;
  }

  void shout() {
    print('I\'m ${_name ?? _firstName} and I\'m $_tall cm tall');
    print('Money: $_money');
  }
}