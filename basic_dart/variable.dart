void main() {
  int age = 1;
  late int lateInitializeAge;
  print(age);

  lateInitializeAge = 2;
  print(lateInitializeAge);

  dynamic dynamicVariable = "Hello";
  print(dynamicVariable);

  dynamicVariable = 50;
  print(dynamicVariable);

  var dynamicVariableByDefault;
  dynamicVariableByDefault = "World";
  print(dynamicVariableByDefault);

  dynamicVariableByDefault = 5;
  print(dynamicVariableByDefault);

  const double pi = 3.14;
  final int ZERO = 0;


}
