import 'package:flutter/material.dart';

import '../const/app_color.dart';

class QButtonIcon extends StatelessWidget {
  const QButtonIcon({
    Key? key,
    required this.icon,
    this.onPressed,
  }) : super(key: key);

  final IconData icon;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(3.0),
      height: 50.0,
      width: 50.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black.withOpacity(0.2),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: greySadeColor,
        ),
      ),
    );
  }
}
