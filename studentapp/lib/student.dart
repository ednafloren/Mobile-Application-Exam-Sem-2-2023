class Student {
  String _name;
  int _age;

  Student(this._name, this._age);

  String get name => _name;
  set name(String name) => _name = name;

  int get age => _age;
  set age(int age) => _age = age;

  
}

void main() {
  // Creating instances of the Student class
  var student1 = Student('John Doe', 20);
 


  // Accessing private attributes using getter methods
  print('${student1.name}  ${student1.age}' );


 
 
}
