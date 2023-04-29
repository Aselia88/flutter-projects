import 'package:flutter/material.dart';
import 'package:sabak10_end_for_loop/home/user_page.dart';
import 'package:sabak10_end_for_loop/theme/model.dart';

List studentter = <Student>[dastan, dinara, asel, adina, aybek];

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? _name;
  String? _gmail;

  void controlNameEmail(String name, String email) {
    int index = 0;
    for (final student in studentter) {
      index++;
      //index = 2;
      if (name == student.name && email == student.email) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => UserPage(
              student: student.name, studentt: student.surName,
              student1: student.age, student2: student.email,
              student3: student.phone, student4: student.adress,
              student5: student.gender, student6: student.id,
              student7: student.group, student8: student.marriage,
              // student: student.email,
            ),
          ),
        );
        break;
      } else {
        if (index == studentter.length + 1) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Сиздин атыныз же почтаныз туура эмес!!'),
            ),
          );
        } else {
          continue;
          //continue- улантуу
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    var container = Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            'https://images.unsplash.com/photo-1564754943164-e83c08469116?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
          ),
        ),
      ),
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                FlutterLogo(size: 80),
                Text(
                  'Flutter',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
            const Text(
              'Welcome! ',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: Colors.blue),
            ),
            const Text('Please sing in to continue',
                style: TextStyle(color: Colors.black)),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 15, top: 15, bottom: 20),
              child: TextField(
                onChanged: (String value) {
                  _name = value;

                  print('Валуе иштеди $value');
                  print('Валуе иштеди $_name');
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 15, top: 15, bottom: 20),
              child: TextField(
                onChanged: (String value) {
                  _gmail = value;
                  print('Валуе иштеди $value');
                  print('Валуе иштеди $_gmail');
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Gmail',
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(200, 40),
                  backgroundColor: Colors.orange),
              onPressed: () {
                controlNameEmail(_name!, _gmail!);
              },
              child: const Text(
                'Login',
              ),
            ),
          ],
        ),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        centerTitle: true,
        title: Text(
          'LoginPage'.toUpperCase(),
        ),
      ),
      body: Center(
        child: container,
      ),
    );
  }
}
