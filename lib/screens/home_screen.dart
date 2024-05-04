import 'package:flutter/material.dart';
import 'package:rescue_time/components/app_bar_widget.dart';
import 'package:rescue_time/components/content_tab.dart';
import 'package:rescue_time/components/text_widget.dart';
import 'package:rescue_time/constants/spaces.dart';
import 'package:rescue_time/tab/about_tab.dart';
import 'package:rescue_time/tab/reading_tab.dart';
import 'package:rescue_time/tab/video_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> contentTabs = [
    const ContentTabsWidget(
      iconPath: 'assets/images/tab_about.png',
    ),
    const ContentTabsWidget(
      iconPath: 'assets/images/tab_reading.png',
    ),
    const ContentTabsWidget(
      iconPath: 'assets/images/tab_video.png',
    ),
    // const ContentTabsWidget(
    //   iconPath: 'assets/images/tap_other.png',
    // ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: contentTabs.length,
      child: Scaffold(
        appBar: AppBarWidget(
          isBackButton: false,
          icon: Icons.person,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36.0, vertical: 18),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TextWidget(
                  text: "How can Emerga help you?",
                  size: 30,
                  isBold: true,
                ),
                trVSpace24,
                const TextWidget(
                  text: "Content",
                  size: 20,
                ),
                trVSpace8,
                TabBar(tabs: contentTabs),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: TabBarView(
                    children: [
                      AboutTab(),
                      ReadingTab(),
                      VideoTab(),
                      // OtherTab(),
                    ],
                  ),
                ),
                const TextWidget(
                  text: "  About TimeRescue",
                  size: 20,
                ),
                    trVSpace8,
                TabBar(tabs: contentTabs),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: TabBarView(
                    children: [
                      AboutTab(),
                      ReadingTab(),
                      VideoTab(),
                      // OtherTab(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
