import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    super.key,
    required this.conteinerdinTexti,
    required this.conteinerdinTexti2,
    this.icon,
    required this.image,
    this.image2,
    // ignore: non_constant_identifier_names
    required this.Colors,
    // ignore: non_constant_identifier_names
    // required this.AudioPlayer,
  });
  final String conteinerdinTexti, conteinerdinTexti2;
  final IconData? icon;
  final String image;
  final String? image2;
  // ignore: non_constant_identifier_names
  final Color Colors;
  // ignore: non_constant_identifier_names
  // final String AudioPlayer;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: double.infinity,
      color: Colors,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(conteinerdinTexti),
            Text(conteinerdinTexti2),
            Icon(icon),
          ]),
          const SizedBox(
            width: 40,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                image,
                height: 70,
                width: 70,
              ),
            ],
          )
        ],
      ),
    );
  }
}
