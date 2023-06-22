import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:blood_bridge/generated/assets.dart';
import 'package:blood_bridge/presentation/pages/home/components/home.dart';
import 'package:blood_bridge/presentation/pages/home/components/request_page.dart';
import 'package:blood_bridge/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../state/navigation.dart';

class HomeMainPage extends ConsumerStatefulWidget {
  const HomeMainPage({super.key});

  @override
  ConsumerState<HomeMainPage> createState() => _HomeMainPageState();
}

class _HomeMainPageState extends ConsumerState<HomeMainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(bottomNavIndexProvider.notifier).state = 4;
        },
        backgroundColor: primaryColor,
        child: Icon(
          MdiIcons.plus,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: [
          MdiIcons.home,
          MdiIcons.history,
          MdiIcons.bell,
          MdiIcons.account,
        ],
        activeIndex: ref.watch(bottomNavIndexProvider),
        gapLocation: GapLocation.center,
        activeColor: primaryColor,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        onTap: (index) =>
            ref.read(bottomNavIndexProvider.notifier).state = index,
        //other params
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListTile(
          contentPadding: const EdgeInsets.all(0),
          title: Row(children: [
            Image.asset(Assets.logosIco, width: 50, height: 50),
            const SizedBox(width: 10),
            Text("Blood Bridge",
                style: GoogleFonts.lobster(fontSize: 35, color: primaryColor))
          ]),
          subtitle: ref.watch(bottomNavIndexProvider) == 0
              ? const HomePage()
              : ref.watch(bottomNavIndexProvider) == 1
                  ? Container()
                  : ref.watch(bottomNavIndexProvider) == 2
                      ? const RequestPage()
                      : ref.watch(bottomNavIndexProvider) == 3
                          ? Container()
                          : ref.watch(bottomNavIndexProvider) == 4
                              ? const RequestPage()
                              : Container(),
        ),
      ),
    ));
  }
}
