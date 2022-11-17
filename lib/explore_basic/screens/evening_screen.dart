import 'package:flutter/material.dart';
import 'package:webpage/explore_basic/constants/app_colors.dart';
import 'package:webpage/explore_basic/constants/image_constants.dart';
import 'package:webpage/explore_basic/widgets/evening_parallax_widget.dart';

class EveningScreen extends StatefulWidget {
  const EveningScreen({super.key});

  @override
  State<EveningScreen> createState() => _EveningScreenState();
}

class _EveningScreenState extends State<EveningScreen> {
  double rateZero = 0;
  double rateOne = 0;
  double rateTwo = 0;
  double rateThree = 0;
  double rateFour = 0;
  double rateFive = 0;
  double rateSix = 0;
  double rateSeven = 0;
  double rateEight = 90;

  late String asset;
  late double top;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.water,
      appBar: AppBar(
        title: const Text("Evening"),
      ),
      body: NotificationListener(
        onNotification: (v) {
          if (v is ScrollUpdateNotification) {
            //only if scroll update notification is triggered
            setState(() {
              rateEight -= v.scrollDelta! / 1;
              rateSeven -= v.scrollDelta! / 1.5;
              rateSix -= v.scrollDelta! / 2;
              rateFive -= v.scrollDelta! / 2.5;
              rateFour -= v.scrollDelta! / 3;
              rateThree -= v.scrollDelta! / 3.5;
              rateTwo -= v.scrollDelta! / 4;
              rateOne -= v.scrollDelta! / 4.5;
              rateZero -= v.scrollDelta! / 5;
            });
          }
          return true;
        },
        child: Stack(
          children: [
            EveningParallaxWidget(top: rateZero, image: EveningImage.evening0),
            EveningParallaxWidget(top: rateOne, image: EveningImage.evening1),
            EveningParallaxWidget(top: rateTwo, image: EveningImage.evening2),
            EveningParallaxWidget(top: rateThree, image: EveningImage.evening3),
            EveningParallaxWidget(top: rateFour, image: EveningImage.evening4),
            EveningParallaxWidget(top: rateFive, image: EveningImage.evening5),
            EveningParallaxWidget(top: rateSix, image: EveningImage.evening6),
            EveningParallaxWidget(top: rateSeven, image: EveningImage.evening7),
            EveningParallaxWidget(top: rateEight, image: EveningImage.evening8),
            ListView(
              children: <Widget>[
                Container(
                  height: 600,
                  color: Colors.transparent,
                ),
                Container(
                  color: AppColors.appBlack,
                  width: double.infinity,
                  padding: const EdgeInsets.only(top: 70),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const <Widget>[
                      Text(
                        "Parallax In",
                        style: TextStyle(
                            fontSize: 30,
                            fontFamily: "MontSerrat-ExtraLight",
                            letterSpacing: 1.8,
                            color: AppColors.orange),
                      ),
                      Text(
                        "Flutter",
                        style: TextStyle(
                            fontSize: 51,
                            fontFamily: "MontSerrat-Regular",
                            letterSpacing: 1.8,
                            color: AppColors.orange),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: 190,
                        child: Divider(
                          height: 1,
                          color: AppColors.orange,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Made By",
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: "Montserrat-Extralight",
                          letterSpacing: 1.3,
                          color: AppColors.orange,
                        ),
                      ),
                      Text(
                        "@Roh_AN",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: "Montserrat-Regular",
                          letterSpacing: 1.8,
                          color: AppColors.orange,
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
