import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Second Page"),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            "I'm a beginner programmer",
            style: TextStyle(
                fontSize: 28, color: Colors.blue, fontFamily: "fonts"),
          ),
          Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJ0tWU27we98gMs8aCYr49HiB84F2MFXezYt_WfoWPlkcaKIYPzH_8WZM6mcAVygaRJ2o&usqp=CAU"),
        ]),
      ),
    );
  }
}
