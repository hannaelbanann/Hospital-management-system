import 'dart:io';
import 'hospital.dart';
import 'doctor.dart';
import 'patient.dart';
void main() {
  Hospital hospital = Hospital();

  bool running = true;

  while (running) {
    print("""       Hospital Management System       """  );
    print("1- Add Doctor");
    print("2- Add Patient");
    print("3- Display Doctors");
    print("4- Display Patients");
    print("5- Book Appointment");
    print("6- Exit");

    stdout.write("Choose an option: ");
    String choice = stdin.readLineSync() ?? "";

    switch (choice) {
      case "1":
        stdout.write("Enter doctor name: ");
        String name = stdin.readLineSync() ?? "";

        stdout.write("Enter doctor age: ");
        int age = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

        stdout.write("Enter specialization: ");
        String specialization = stdin.readLineSync() ?? "";

        Doctor doctor = Doctor(name, age, specialization);
        hospital.addDoctor(doctor);
        break;

      case "2":
        stdout.write("Enter patient name: ");
        String name = stdin.readLineSync() ?? "";

        stdout.write("Enter patient age: ");
        int age = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

        stdout.write("Enter patient ID: ");
        String id = stdin.readLineSync() ?? "";

        Patient patient = Patient(name, age, id);
        hospital.addPatient(patient);
        break;

      case "3":
        hospital.displayDoctors();
        break;

      case "4":
        hospital.displayPatients();
        break;

      case "5":
        stdout.write("Enter patient ID: ");
        String id = stdin.readLineSync() ?? "";

        stdout.write("Enter doctor name: ");
        String doctorName = stdin.readLineSync() ?? "";

        hospital.bookAppointment(id, doctorName);
        break;

      case "6":
        print("Thank you for using the system.");
        running = false;
        break;

      default:
        print("Invalid choice please try again.");
    }
  }
}