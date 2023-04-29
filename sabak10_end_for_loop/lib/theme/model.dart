import 'package:flutter/material.dart';

class Student {
  Student(
      {required this.id,
      required this.name,
      required this.surName,
      required this.age,
      this.phone,
      required this.email,
      this.adress,
      required this.group,
      this.gender,
      this.marriage});
  final int id;
  final String name;
  final String surName;
  final int age;
  String? phone;
  final String email;
  final String? adress;
  int group;
  final String? gender;
  String? marriage;
}

final dastan = Student(
  id: 1,
  name: 'Dastan',
  surName: 'Askarov',
  age: 18,
  email: 'dastan3@mail',
  phone: '37573863557',
  adress: 'Batken',
  gender: 'man',
  marriage: 'single',
  group: 3,
);

final asel = Student(
    id: 2,
    name: 'Asel',
    surName: 'Arzymamat kyzy',
    age: 34,
    phone: "89299556191",
    email: 'asel@mail',
    adress: 'Moscow',
    gender: 'women',
    group: 1,
    marriage: 'married');

final adina = Student(
    id: 3,
    name: 'Adina',
    surName: 'Atakanova',
    age: 30,
    email: 'adina3@mail',
    adress: 'Alay',
    phone: '8683615934',
    gender: 'women',
    group: 1,
    marriage: 'married');

final dinara = Student(
  id: 4,
  name: 'Dinara',
  surName: 'Abdieva',
  age: 32,
  email: 'dinara@mail',
  adress: 'Moscow',
  phone: '794763826478',
  gender: 'women',
  group: 1,
  marriage: 'single',
);

final aybek = Student(
  id: 5,
  name: 'Aybek',
  surName: 'Askarov',
  age: 32,
  email: 'aybek@mail',
  phone: '89994945563',
  adress: 'Nookat',
  gender: 'man',
  marriage: 'single',
  group: 1,
);
