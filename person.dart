class Person {
  String? firstName;
  String? lastName;

  Person(String firstName, String lastName) {
    this.firstName = firstName;
    this.lastName  = lastName;
  }

  String getFullName() {
    return "$firstName $lastName";
  }
}

class Employee extends Person{
  //todo
  late int employeeID;

  Employee(String firstName, String lastName, int employeeID): super(firstName, lastName) {
    this.employeeID = employeeID;
  }

  int getID() {
    return employeeID;
  }
}

main() {
  Employee employee = new Employee('Clark','Kent', 101);
  print(employee.getFullName());
  print(employee.getID());
}
