import 'package:flutter/material.dart';
import 'package:sabak6_extract_widget_and_contstants/components/custom_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Components and Constants"),
        ),
        body: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),
              Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREZYryxTtX16p_tlOo3np0PTnz9npVWLioUw&usqp=CAU"),
              //Row горизонтальное положение
              const CustomButton(
                icon: Icons.phone,
                text: 'Менин телефонум',
              ),
              const SizedBox(
                height: 15,
              ),
              const CustomButton(
                icon: Icons.mail,
                text: 'Электрондук почта',
              ),
            ],
          ),
        ));
  }
}
