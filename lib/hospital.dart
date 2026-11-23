
import 'doctor.dart';
import 'patient.dart';

class Hospital {
List<Doctor> doctors = [];
List<Patient> patients = [];

void addDoctor(Doctor doctor) {
doctors.add(doctor);
print("Doctor added successfully!");
}

void addPatient(Patient patient) {
for (var p in patients) {
if (p.patientId == patient.patientId) {
print("This Patient ID already exists!");
return;
}
}

patients.add(patient);
print("Patient added successfully!");
}

void displayDoctors() {
if (doctors.isEmpty) {
print("No doctors available.");
return;
}

for (var doctor in doctors) {
print("--------------------");
doctor.displayInfo();
}
}
void displayPatients() {
if (patients.isEmpty) {
print("No patients available.");
return;
}

for (var patient in patients) {
print("--------------------");
patient.displayInfo();
}
}

void bookAppointment(String id, String doctorName) {
Patient? selectedPatient;
Doctor? selectedDoctor;

for (var patient in patients) {
if (patient.patientId == id) {
selectedPatient = patient;
}
}
for (var doctor in doctors) {
if (doctor.name.toLowerCase() == doctorName.toLowerCase()) {
selectedDoctor = doctor;
}
}

if (selectedPatient == null) {
print("Patient ID not found!");
return;
}

if (selectedDoctor == null) {
print("Doctor not found!");
return;
}

selectedPatient.bookAppointment(selectedDoctor);
}
}
