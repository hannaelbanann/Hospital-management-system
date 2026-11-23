import 'person.dart';
import 'doctor.dart';


class Patient extends Person {
  String _patientId;
  Doctor? _doctor;

  Patient(String name, int age, this._patientId) : super(name, age);
  Patient.guest() : _patientId = "Guest", super("Guest Patient", 0);
  String get patientId => _patientId;

  set patientId(String id) {
    if (id.isNotEmpty) {
      _patientId = id;
    } else {
      print(" sorry patient ID cannot be empty");
    }
  }

  void bookAppointment(Doctor doctor) {
    _doctor = doctor;
    print("Appointment booked successfully");
  }

  @override
  void displayInfo() {
    print("Patient Name: $name");
    print("Age: $age");
    print("Patient ID: $_patientId");

    if (_doctor != null) {
      print("Assigned doctor: ${_doctor!.name}");
    } else {
      print("No doctor assigned.");
    }
  }
}