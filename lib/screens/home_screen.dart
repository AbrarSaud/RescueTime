import 'package:flutter/material.dart';
import 'package:rescue_time/components/app_bar_widget.dart';
import 'package:rescue_time/components/text_widget.dart';
import 'package:rescue_time/constants/nav.dart';
import 'package:rescue_time/constants/spaces.dart';
import 'package:rescue_time/data/tab_data.dart';
import 'package:rescue_time/screens/profile_screen.dart';
import 'package:rescue_time/tab/about_tab.dart';
import 'package:rescue_time/tab/reading_tab.dart';
import 'package:rescue_time/tab/security_tab.dart';
import 'package:rescue_time/tab/video_tab.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController contentTabsController;
  late TabController aboutTimeRescueTabsController;

  @override
  void initState() {
    super.initState();
    contentTabsController =
        TabController(length: contentTabs.length, vsync: this);
    aboutTimeRescueTabsController =
        TabController(length: aboutTimeRescueTabs.length, vsync: this);
  }

  @override
  void dispose() {
    contentTabsController.dispose();
    aboutTimeRescueTabsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        isBackButton: false,
        icon: Icons.person,
        onPressed: () => context.pushNav(screen: const ProfileScreen()),
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
              TabBar(
                controller: contentTabsController,
                tabs: contentTabs,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.25,
                child: TabBarView(
                  controller: contentTabsController,
                  children: [
                    AboutTab(
                      isContentTab: true,
                      onPress: () async {
                        const url = 'https://www.google.com';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                    ),
                    ReadingTab(
                      isContentTab: true,
                      onPress: () async {
                        const url = 'https://www.google.com';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                    ),
                    VideoTab(
                      onPress: () async {
                        const url = 'https://www.google.com';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                    ),
                  ],
                ),
              ),
              trVSpace16,
              const TextWidget(
                text: "  About TimeRescue",
                size: 20,
              ),
              trVSpace8,
              TabBar(
                controller: aboutTimeRescueTabsController,
                tabs: aboutTimeRescueTabs,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.25,
                child: TabBarView(
                  controller: aboutTimeRescueTabsController,
                  children: [
                    AboutTab(
                      isContentTab: false,
                      onPress: () async {
                        const url = 'https://www.google.com';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                    ),
                    ReadingTab(
                      isContentTab: false,
                      onPress: () async {
                        const url = 'https://www.google.com';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                    ),
                    SecurityTab(
                      onPress: () async {
                        const url = 'https://www.google.com';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
