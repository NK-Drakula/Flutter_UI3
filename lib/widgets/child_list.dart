import 'package:flutter/material.dart';

class ChildList extends StatelessWidget {
  final Icon firstIcon;
  final String text;
  final Widget? secondIcon;

  const ChildList({
    super.key,
    required this.firstIcon,
    required this.text,
    this.secondIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            child: Row(
              children: [
                firstIcon,
                const SizedBox(width: 5),
                Text(
                  text,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            child: secondIcon ?? const Text(''),
          ),
        ],
      ),
    );
  }
}
