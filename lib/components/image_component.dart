import 'package:flutter/material.dart';

class myImage extends StatelessWidget {
  final double Width;


  const myImage({super.key, required this.Width});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(47),
            child: Image.asset(
              'lib/images/Leonardo_Phoenix_Design_a_modern_logo_for_the_mobile_app_Kasir_3.jpg',
              width: Width,
            ),
          ),
        ],
      ),
    );
  }
}
