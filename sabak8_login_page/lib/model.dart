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
  adress: 'Batken',
  gender: 'man',
  marriage: 'single',
  group: 1,
);

final asel = Student(
  id: 2,
  name: 'Asel',
  surName: 'Arxymamat kyzy',
  age: 34,
  phone: "89299556191",
  email: 'asel@mail',
  adress: 'Bishkek',
  gender: 'women',
  group: 1,
);

final adina = Student(
  id: 3,
  name: 'Adina',
  surName: 'Atakanova',
  age: 30,
  email: 'adina3@mail',
  adress: 'Alay',
  gender: 'women',
  group: 1,
);

final dinara = Student(
  id: 4,
  name: 'Dinara',
  surName: 'Abdieva',
  age: 32,
  email: 'dinara@mail',
  adress: 'Moscow',
  gender: 'women',
  group: 1,
);

final aybek = Student(
  id: 5,
  name: 'Aybek',
  surName: 'Askarov',
  age: 32,
  email: 'dastan3@mail',
  phone: '89994945563',
  adress: 'Nookat',
  marriage: 'single',
  group: 1,
);

List studentter = <Student>[dastan, dinara, asel, adina, aybek];
