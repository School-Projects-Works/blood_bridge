import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:blood_bridge/generated/assets.dart';
import 'package:blood_bridge/presentation/pages/home/components/home.dart';
import 'package:blood_bridge/presentation/pages/home/components/request_page.dart';
import 'package:blood_bridge/styles/colors.dart';
import 'package:blood_bridge/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../state/data_flow.dart';
import '../../../state/navigation.dart';

class HomeMainPage extends ConsumerStatefulWidget {
  const HomeMainPage({super.key});

  @override
  ConsumerState<HomeMainPage> createState() => _HomeMainPageState();
}

class _HomeMainPageState extends ConsumerState<HomeMainPage> {
  @override
  Widget build(BuildContext context) {
    var user = ref.watch(userProvider);
    return Scaffold(
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
          MdiIcons.apps,
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
      body: ListTile(
        contentPadding: const EdgeInsets.all(0),
        title: Container(
          color: primaryColor,
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 30),
              Row(children: [
                Image.asset(Assets.logosIco, width: 50, height: 50),
                const SizedBox(width: 10),
                Text("Blood Bridge",
                    style:
                        GoogleFonts.lobster(fontSize: 35, color: Colors.white))
              ]),
              const Divider(
                color: Colors.white12,
                thickness: 2,
              ),
              Row(
                children: [
                  Text(
                    'Welcome,',
                    style: normalText(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Expanded(
                      child: Row(
                    children: [
                      const Spacer(),
                      PopupMenuButton(
                        child: Icon(
                          MdiIcons.filterVariant,
                          color: Colors.white,
                          size: 40,
                        ),
                        itemBuilder: (context) {
                          return [
                            PopupMenuItem(
                              value: 'profile',
                              child: Row(
                                children: [
                                  Icon(MdiIcons.account),
                                  const SizedBox(width: 10),
                                  const Text('Profile'),
                                ],
                              ),
                            ),
                            PopupMenuItem(
                              value: 'signOut',
                              child: Row(
                                children: [
                                  Icon(MdiIcons.logout),
                                  const SizedBox(width: 10),
                                  const Text('Sign Out'),
                                ],
                              ),
                            )
                          ];
                        },
                        onSelected: (value) async {},
                      ),
                      const SizedBox(width: 10),
                      Container(
                          width: 30,
                          height: 30,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              image: user.profileUrl != null
                                  ? DecorationImage(
                                      image: NetworkImage(user.profileUrl!),
                                      fit: BoxFit.cover)
                                  : null,
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: user.profileUrl == null
                              ? Icon(
                                  MdiIcons.account,
                                  size: 50,
                                )
                              : null),
                    ],
                  ))
                ],
              ),
              Text(user.name!,
                  style:
                      GoogleFonts.lobster(fontSize: 22, color: Colors.white)),
            ],
          ),
        ),
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
    );
  }
}
