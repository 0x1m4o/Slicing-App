import 'package:flutter/material.dart';

class ButtonNavigation extends StatelessWidget {
  final String img;
  final String title;
  const ButtonNavigation({
    required this.img,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(60)),
                width: 110,
                height: 110,
              ),
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(60)),
                height: 85,
                width: 85,
                child: Image.asset(fit: BoxFit.contain, 'assets/img/$img'),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5),
            child: Text(
              title,
              style: TextStyle(color: Colors.grey.shade600),
            ),
          ),
          const SizedBox(
            height: 5,
          )
        ],
      ),
    );
  }
}
