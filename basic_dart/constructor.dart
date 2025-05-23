void main() {
  Person person = Person('John Doe', 30);
  person.display();

  Person person2 = Person.origin(); // Using named constructor
  person2.display();

  Person factoryPerson = Person.factory('Alice');
  factoryPerson.display();

  // Student student = Student.origin(); // Error: No named constructor because named constructor is not inherited
  Student student = Student('Jane Doe', 20, 'S12345');
  student.display();

  ImmutablePoint point = ImmutablePoint(3, 4);
  print('Point: (${point.x}, ${point.y})');

  ImmutablePoint pointOrigin = ImmutablePoint.origin;
  print('Origin Point: (${pointOrigin.x}, ${pointOrigin.y})');
}

class Person {
  String name;
  int age;

  // Constructor
  Person(this.name, this.age);

  // Named constructor
  Person.origin() : name = 'none', age = 0;

  // // Factory constructor
  factory Person.factory(String name) {
    return Person(name, 0);
  }

  void display() {
    print('Name: $name, Age: $age');
  }
}

class Student extends Person {
  String studentId;

  // Constructor
  Student(String name, int age, this.studentId) : super(name, age);

  @override
  void display() {
    super.display();
    print('Student ID: $studentId');
  }
}

class ImmutablePoint {
  static const ImmutablePoint origin = ImmutablePoint(0, 0);

  final double x, y;

  const ImmutablePoint(this.x, this.y);
}