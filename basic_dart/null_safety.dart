void main() {
  String name = "John Doe";
  String? middleName; // Nullable variable
  
  print('${name.split(' ')[0]} ${middleName} ${name.split(' ')[1]}'); // John null Doe
  print('${name.split(' ')[0]} ${middleName ?? ''}${name.split(' ')[1]}'); // John Doe

  // late String fullName;
  // print(fullName); // Error: LateInitializationError: Field 'fullName' has not been initialized.

  String? nullableString;
  // String test = nullableString; //Can't define value because nullableString is null
  // print(test);
  // String test2 = nullableString!; //Assuming nullableString is not null
  // print(test2); // Error: Null check operator used on a null value

  print(nullableString?.length ?? 0);
}