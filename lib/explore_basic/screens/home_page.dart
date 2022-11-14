// ignore_for_file: library_private_types_in_public_api

import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:webpage/explore_basic/constants/image_constants.dart';
import 'package:webpage/explore_basic/widgets/bottom_bar.dart';
import 'package:webpage/explore_basic/widgets/carousel.dart';
import 'package:webpage/explore_basic/widgets/destination_heading.dart';
import 'package:webpage/explore_basic/widgets/explore_drawer.dart';
import 'package:webpage/explore_basic/widgets/featured_heading.dart';
import 'package:webpage/explore_basic/widgets/featured_tiles.dart';
import 'package:webpage/explore_basic/widgets/floating_quick_access.dart';
import 'package:webpage/explore_basic/widgets/responsive.dart';
import 'package:webpage/explore_basic/widgets/top_bar_contents.dart';
import 'package:webpage/explore_basic/widgets/web_scrollbar.dart';

class HomePage extends StatefulWidget {
  static const String route = '/';

  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late ScrollController _scrollController;
  double _scrollPosition = 0;
  double _opacity = 0;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    _opacity = _scrollPosition < screenSize.height * 0.40
        ? _scrollPosition / (screenSize.height * 0.40)
        : 1;

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      extendBodyBehindAppBar: true,
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? AppBar(
              backgroundColor:
                  Theme.of(context).bottomAppBarColor.withOpacity(_opacity),
              elevation: 0,
              centerTitle: true,
              actions: [
                IconButton(
                  icon: const Icon(Icons.brightness_6),
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onPressed: () {
                    EasyDynamicTheme.of(context).changeTheme();
                  },
                ),
              ],
              title: Text(
                'EXPLORE',
                style: TextStyle(
                  color: Colors.blueGrey[100],
                  fontSize: 20,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 3,
                ),
              ),
            )
          : PreferredSize(
              preferredSize: Size(screenSize.width, 1000),
              child: TopBarContents(_opacity),
            ),
      drawer: const ExploreDrawer(),
      body: WebScrollbar(
        color: Colors.blueGrey,
        backgroundColor: Colors.blueGrey.withOpacity(0.3),
        width: 10,
        heightFraction: 0.3,
        controller: _scrollController,
        child: SingleChildScrollView(
          controller: _scrollController,
          physics: const ClampingScrollPhysics(),
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: screenSize.height * 0.45,
                    width: screenSize.width,
                    child: Image.asset(
                      ImageConstants.cover,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Column(
                    children: [
                      FloatingQuickAccessBar(screenSize: screenSize),
                      Column(
                        children: [
                          FeaturedHeading(
                            screenSize: screenSize,
                          ),
                          FeaturedTiles(screenSize: screenSize)
                        ],
                      ),
                    ],
                  )
                ],
              ),
              DestinationHeading(screenSize: screenSize),
              const DestinationCarousel(),
              SizedBox(height: screenSize.height / 10),
              const BottomBar(),
            ],
          ),
        ),
      ),
    );
  }
}
