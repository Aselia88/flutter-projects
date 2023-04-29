import 'package:flutter/material.dart';

class Phone {
  Phone(this.baasi, {
    
    required this.name,
    required this.model,
    required this.made,
    this.tus,
    required this.jyly,
   
    required this.platform,
  });

  final String name;
  final String model;
  final String made;
  final Color? tus;
  final int jyly;
 final String platform;
   int? baasi;
}
List<Phone> _listPhone = [Phone( 
  name: 'honor', 
model: 'STF-L09',
made:'China' , 
jyly: 2018
 
 platform: 'android')]