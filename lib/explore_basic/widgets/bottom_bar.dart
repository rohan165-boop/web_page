import 'package:flutter/material.dart';
import 'package:webpage/explore_basic/widgets/bottom_bar_column.dart';
import 'package:webpage/explore_basic/widgets/info_text.dart';
import 'package:webpage/explore_basic/widgets/responsive.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      color: Colors.blueGrey[900],
      child: ResponsiveWidget.isSmallScreen(context)
          ? Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    BottomBarColumn(
                      heading: 'ABOUT',
                      s1: 'Contact Us',
                      s2: 'About Us',
                      s3: 'Careers',
                    ),
                    BottomBarColumn(
                      heading: 'HELP',
                      s1: 'Payment',
                      s2: 'Cancellation',
                      s3: 'FAQ',
                    ),
                    BottomBarColumn(
                      heading: 'SOCIAL',
                      s1: 'Twitter',
                      s2: 'Facebook',
                      s3: 'YouTube',
                    ),
                  ],
                ),
                const Divider(
                  color: Colors.blueGrey,
                ),
                const SizedBox(height: 20),
                const InfoText(
                  type: 'Email',
                  text: 'rohanchy165@gmail.com',
                ),
                const SizedBox(height: 5),
                const InfoText(
                  type: 'Address',
                  text: 'Rangeli - 04, Morang Nepal',
                ),
                const SizedBox(height: 20),
                const Divider(
                  color: Colors.blueGrey,
                ),
                const SizedBox(height: 20),
                Text(
                  'Copyright © 2020 | @ROHAN',
                  style: TextStyle(
                    color: Colors.blueGrey.shade300,
                    fontSize: 14,
                  ),
                ),
              ],
            )
          : Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const BottomBarColumn(
                      heading: 'ABOUT',
                      s1: 'Contact Us',
                      s2: 'About Us',
                      s3: 'Careers',
                    ),
                    const BottomBarColumn(
                      heading: 'HELP',
                      s1: 'Payment',
                      s2: 'Cancellation',
                      s3: 'FAQ',
                    ),
                    const BottomBarColumn(
                      heading: 'SOCIAL',
                      s1: 'Twitter',
                      s2: 'Facebook',
                      s3: 'YouTube',
                    ),
                    Container(
                      color: Colors.blueGrey,
                      width: 2,
                      height: 150,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        InfoText(
                          type: 'Email',
                          text: 'rohanchy165@gmail.com',
                        ),
                        SizedBox(height: 5),
                        InfoText(
                          type: 'Address',
                          text: 'Rangeli - 04, Morange Nepal',
                        )
                      ],
                    ),
                  ],
                ),
                const Divider(
                  color: Colors.blueGrey,
                ),
                const SizedBox(height: 20),
                Text(
                  'Copyright © 2020 | @ROHAN',
                  style: TextStyle(
                    color: Colors.blueGrey.shade300,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
    );
  }
}
