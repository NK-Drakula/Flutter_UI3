import 'package:flutter/material.dart';
import 'package:week3/constants/constant.dart';
import 'package:week3/widgets/child_list.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        shadowColor: Colors.black,
        title: const Text(
          'Setting',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20.0,
            horizontal: 15.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              const Text(
                'General',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 10),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 10,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).colorScheme.secondary,
                ),
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.thumb_up_alt_outlined,
                      size: 25,
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Leave Feedback',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Your feedback has a very long way to go',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 10,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).colorScheme.secondary,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ChildList(
                      firstIcon: const Icon(
                        Icons.toggle_on_outlined,
                        size: 35,
                      ),
                      text: 'Switch themes',
                      secondIcon: Switch(
                        value: isSwitched,
                        onChanged: (value) {
                          setState(
                            () {
                              isSwitched = value;
                            },
                          );
                        },
                        activeTrackColor: kPrimaryColor,
                      ),
                    ),
                    Divider(
                      color: Colors.grey[350],
                      thickness: 1.5,
                    ),
                    const ChildList(
                      firstIcon: Icon(
                        Icons.language_outlined,
                        size: 35,
                      ),
                      text: 'Clear Cache',
                    ),
                    Divider(
                      color: Colors.grey[350],
                      thickness: 1.5,
                    ),
                    const ChildList(
                      firstIcon: Icon(
                        Icons.help_outline,
                        size: 35,
                      ),
                      text: 'FAQ',
                      secondIcon: Icon(
                        Icons.chevron_right_outlined,
                        size: 35,
                        color: kPrimaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Legal',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 10),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 10,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).colorScheme.secondary,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ChildList(
                      firstIcon: Icon(
                        Icons.insert_drive_file,
                        size: 34,
                      ),
                      text: 'Data Privacy Terms',
                      secondIcon: Icon(
                        Icons.chevron_right_outlined,
                        size: 35,
                        color: kPrimaryColor,
                      ),
                    ),
                    Divider(
                      color: Colors.grey[350],
                      thickness: 1.5,
                    ),
                    const ChildList(
                      firstIcon: Icon(
                        Icons.file_copy,
                        size: 34,
                      ),
                      text: 'Terms and Conditions',
                      secondIcon: Icon(
                        Icons.chevron_right_outlined,
                        size: 35,
                        color: kPrimaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: ChildList(
                  firstIcon: Icon(
                    Icons.logout_rounded,
                    size: 34,
                  ),
                  text: 'Sign Out',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
