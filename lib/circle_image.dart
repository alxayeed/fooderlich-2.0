import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  final double imageRadius;
  final ImageProvider? imageProvider;
  const CircleImage({Key? key, this.imageRadius = 20.0, this.imageProvider})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: imageRadius,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: imageRadius - 5,
        backgroundColor: Colors.red,
        backgroundImage: imageProvider,
      ),
    );
  }
}
