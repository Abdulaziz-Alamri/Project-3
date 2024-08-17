import 'package:flutter/material.dart';

class TopicHeader extends StatelessWidget {
  final String pageName;
  static final List<String> imagePaths = [
    'assets/images/crown.png',
    'assets/images/diamond.png'
  ];
  final List<String>? points;
  final bool isTopicPage;
  const TopicHeader({super.key, required this.pageName, this.points, this.isTopicPage=true});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 21, horizontal: 25),
      height: 80,
      color: const Color.fromRGBO(196, 196, 196, 0.4),
      child: Row(
        mainAxisAlignment: isTopicPage ? MainAxisAlignment.spaceBetween : MainAxisAlignment.center,
        children: [
          Text(
            pageName,
            style: const TextStyle(
                color: Color.fromRGBO(0, 0, 0, 0.9),
                fontSize: 30,
                fontWeight: FontWeight.w400),
          ),
          if(isTopicPage)
          Row(
            children: [
              Image.asset(
                imagePaths[0],
                height: 40,
                width: 40,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                points![0],
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(236, 192, 85, 1)),
              ),
              const SizedBox(
                width: 10,
              ),
              Image.asset(
                imagePaths[1],
                height: 40,
                width: 40,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                points![1],
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(2, 161, 251, 1)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
