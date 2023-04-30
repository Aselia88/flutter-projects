import 'package:flutter/material.dart';
import 'package:sabak_4_my_visit_card/second_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isActive = false;
  String? phoneNumber;
  String? email;
  void ishtoo() {
    // &&- жана деген белги
    if (phoneNumber != null && email != null) {
      //  ||-же , или дегенди билдирет
      if (phoneNumber!.isEmpty || email!.isEmpty) {
        isActive = false;
      } else {
        isActive = true;
      }
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff056c5c),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            "Тапшырма 4",
            style: TextStyle(color: Color(0xff056c5c)),
          ),
        ),
        elevation: 0,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            "Asel Arzymamat kyzy",
            style: TextStyle(
                color: Color(0xffF7F9F9), fontSize: 48, fontFamily: "fonts"),
          ),
          const Text(
            "Flutter Developer",
            style: TextStyle(color: Color(0xffF7F9F9), fontSize: 28),
          ),
          const Divider(
              height: 0,
              thickness: 3,
              indent: 57,
              endIndent: 47.5,
              color: Colors.white),
          const SizedBox(
            height: 23.5,
          ),
          Container(
            color: Colors.white,
            child: TextFormField(
              style: const TextStyle(
                  fontSize: 20,
                  color: Color(0xff056c5c),
                  fontWeight: FontWeight.w500),
              onChanged: (String? value) {
                phoneNumber = value;
                ishtoo();
                print("value: $value");
                print("phoneNumber: $phoneNumber");
              },
              decoration: const InputDecoration(
                  hintText: "phone number",
                  focusColor: Colors.white,
                  prefixIcon: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Icon(
                      Icons.phone,
                      color: Color(0xff056c5c),
                    ),
                  )),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            color: Colors.white,
            child: TextFormField(
              style: const TextStyle(
                  fontSize: 20,
                  color: Color(0xff056c5c),
                  fontWeight: FontWeight.w500),
              onChanged: (String? value) {
                email = value;
                ishtoo();
                print("value: $value");
                print("email: $email");
              },
              decoration: const InputDecoration(
                labelText: "email adress",
                focusColor: Colors.white,
                prefixIcon: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Icon(
                    Icons.email,
                    color: Color(0xff056c5c),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                side: const BorderSide(width: 2, color: Colors.white),
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 15,
                )),
            onPressed: isActive
                ? () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SecondPage()));
                  }
                : null,
            child: const Text("Start"),
          ),
        ]),
      ),
    );
  }
}
