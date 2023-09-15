import 'package:flutter/material.dart';
import 'package:week3/constants/constant.dart';

class TransactionPanel extends StatelessWidget {
  final String title;
  final String image;
  final String date;
  final String price;
  const TransactionPanel({
    super.key,
    required this.title,
    required this.image,
    required this.date,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: Theme.of(context).colorScheme.secondary,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage(image),
                  ),
                ),
                width: 80,
                height: 80,
              ),
              const SizedBox(width: 8),
              Column(
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 5,
                      vertical: 2,
                    ),
                    decoration: BoxDecoration(
                        color: kPrimaryColor.withAlpha(50),
                        border: Border.all(
                          color: kPrimaryColor,
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(5)),
                    child: const Text(
                      'Success',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: kPrimaryColor,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          Column(
            children: [
              Text(
                date,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  Image.asset(
                    kNaira,
                    width: 16,
                    height: 16,
                    color: kPrimaryColor,
                  ),
                  const SizedBox(width: 3),
                  Text(
                    price,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: kPrimaryColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
