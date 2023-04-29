import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:sabak13_piano_app3_and_extract/components/conteiner_widget.dart';
// import 'package:sabak13_piano_app3_and_extract/components/play_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Extract Widget')),
        ),
        body: Center(
          child: Column(
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: () async {
                      await AudioPlayer().stop();
                      AudioPlayer().play(AssetSource('assaliam.mp3'));
                    },
                    child: const ContainerWidget(
                      conteinerdinTexti: 'Assaliamy Aleikum',
                      conteinerdinTexti2: 'Emil Baltagylov',
                      icon: Icons.add_home,
                      image:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvqJDNgkFN7bLEUpDV5S85-4n0OiBpgbAZbrysenI-LLnueKcGug8lseCbZ13mK46eibk&usqp=CAU',
                      Colors: Colors.green,

                      // AudioPlayer: '',
                    ),
                  ),
                  // playWidget(),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () async {
                      await AudioPlayer().stop();
                      AudioPlayer().play(AssetSource('balama.mp3'));
                    },
                    child: const ContainerWidget(
                      conteinerdinTexti: 'Balama',
                      conteinerdinTexti2: 'Aigerim Rasyl kyzy',
                      icon: Icons.email,
                      image:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLxHKQv3ZU2STfwF5fQQXVnX1vfR74QDtJgg&usqp=CAU',
                      Colors: Colors.cyan,
                      // AudioPlayer: '',
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () async {
                      await AudioPlayer().stop();
                      AudioPlayer().play(AssetSource('meerim.mp3'));
                    },
                    child: const ContainerWidget(
                      conteinerdinTexti: 'Meerim ',
                      conteinerdinTexti2: 'chor: Ak shoola',
                      image:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQf8vuX2iinpSSa7_0WjGjax2g8mhkFnXl_Qg&usqp=CAU',
                      Colors: Colors.yellow,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () async {
                      await AudioPlayer().stop();
                      AudioPlayer()
                          .play(AssetSource('mamalak_(chaqqon.net).mp3'));
                    },
                    child: const ContainerWidget(
                      conteinerdinTexti: 'Mamalak',
                      conteinerdinTexti2: 'chor: Ak shoola',
                      icon: Icons.access_time,
                      image:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5fTvI7z39_PnKik48KPWA9GfppxSR4JnKBQ&usqp=CAU',
                      Colors: Colors.pink,
                      // AudioPlayer: '',
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () async {
                      await AudioPlayer().stop();
                      AudioPlayer().play(AssetSource('chir_bala.mp3'));
                    },
                    child: const ContainerWidget(
                      conteinerdinTexti: 'Chir bala',
                      conteinerdinTexti2: 'chor: Ak shoola',
                      image:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSr1YN_cE--NW8-XrQwdSq9W1hYJMlEvRsktg&usqp=CAU',
                      Colors: Colors.blue,
                      // AudioPlayer: '',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
