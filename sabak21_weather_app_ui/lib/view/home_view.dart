import 'package:flutter/material.dart';
import 'package:sabak21_weather_app_ui/constants/app_colors.dart';
import 'package:sabak21_weather_app_ui/constants/app_text_style.dart';

class MyHomeView extends StatefulWidget {
  const MyHomeView({super.key});

  @override
  State<MyHomeView> createState() => _MyHomeViewState();
}

class _MyHomeViewState extends State<MyHomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appBgr,
        title: const Center(
          child: Text('Тапшырма 09', style: AppTextStyle.titleStyle),
        ),
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/image/dgr image.jpg',
            ),
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(
                    Icons.near_me,
                    color: AppColors.iconcolor,
                  ),
                  Icon(
                    Icons.location_city,
                    color: AppColors.iconcolor,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    left: 10,
                  ),
                ),
                const Text('8', style: AppTextStyle.sanTextStyle),
                Image.asset(
                  'assets/image/cloudimage.png',
                  height: 150,
                  width: 150,
                ),
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            const Align(
              alignment: Alignment.centerRight,
              child: Text(
                'You\'ll\n need\n and',
                style: TextStyle(color: AppColors.appBgr, fontSize: 70),
              ),
            ),
            const Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Bishkek',
                style: TextStyle(
                  color: AppColors.appBgr,
                  fontSize: 80,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
