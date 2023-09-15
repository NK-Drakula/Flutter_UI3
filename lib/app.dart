import 'package:flutter/material.dart';
import 'package:week3/constants/constant.dart';
import 'package:week3/pages/profile_page.dart';
import 'package:week3/pages/setting_page.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int index1 = 0;
  final screens = [
    const ProfilePage(),
    const SettingPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index1],
      bottomNavigationBar: NavigationBar(
        animationDuration: const Duration(milliseconds: 1500),
        indicatorColor: kPrimaryColor.withAlpha(40),
        backgroundColor: Theme.of(context).colorScheme.primary.withAlpha(200),
        selectedIndex: index1,
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        onDestinationSelected: (index) {
          setState(() => index1 = index);
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
            selectedIcon: Icon(
              Icons.person,
              color: kPrimaryColor,
            ),
          ),
          NavigationDestination(
            icon: Icon(Icons.settings_outlined),
            label: 'Setting',
            selectedIcon: Icon(
              Icons.settings,

              color: kPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
