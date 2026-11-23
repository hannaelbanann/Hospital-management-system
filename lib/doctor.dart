import 'person.dart';

class Doctor extends Person {
  String specialization;

  Doctor(String name, int age, this.specialization) : super(name, age);

  @override
  void displayInfo() {
    print("Doctor Name: $name");
    print("Age: $age");
    print("Specialization: $specialization");
  }
}